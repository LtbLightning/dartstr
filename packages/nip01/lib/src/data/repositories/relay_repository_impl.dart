import 'dart:async';
import 'dart:developer';

import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/src/data/data_sources/web_socket_data_source.dart';
import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';

class RelayRepositoryImpl implements RelayRepository {
  final WebSocketDataSource _dataSource;
  late StreamSubscription<RelayMessageModel> _relayMessageSubscription;
  late StreamSubscription<WebSocketState> _relayStateSubscription;
  final StreamController<SignedEvent> _eventController;
  final Map<String, Subscription> _subscriptions = {};
  final Map<String, StreamController<SignedEvent>> _subscriptionControllers =
      {};
  final Map<String, void Function(List<SignedEvent>)>
      _subscriptionEoseCallbacks = {};
  final Map<String, List<SignedEvent>> _subscriptionStoredEvents = {};
  final Map<String, Completer> _subscriptionClosedCompleters = {};
  final Map<String, Completer<bool>> _eventAcceptedCompleters = {};

  RelayRepositoryImpl(this._dataSource)
      : _eventController = StreamController<SignedEvent>.broadcast() {
    _relayMessageSubscription = _dataSource.messages.listen(
      (message) {
        switch (message) {
          case RelayEventMessageModel _:
            log('Received event message: $message');
            _handleEventMessage(message);
          case RelayEoseMessageModel _:
            log('Received EoSE message: $message');
            _handleEoseMessage(message);
          case RelayClosedMessageModel _:
            log('Received closed message: $message');
            _handleClosedMessage(message);
          case RelayOkMessageModel _:
            log('Received OK message: $message');
            _handleOkMessage(message);
          case RelayNoticeMessageModel _:
            log('Received notice message: $message');
        }
      },
    );
    // Listen to state changes of the data source to re-subscribe to subscriptions
    //  when a new connection is established
    _relayStateSubscription = _dataSource.states.listen(
      (state) {
        log('Relay state changed: $state');
        if (state == WebSocketState.connected) {
          // Re-subscribe to all subscriptions when reconnected
          for (final subscription in _subscriptions.values) {
            final message = ClientMessageModel.subscription(subscription);
            _dataSource.sendMessage(message);
          }
        }
      },
    );
  }

  @override
  Stream<Relay> get relayStream => _dataSource.states.map((state) {
        return Relay(
          url: _dataSource.url,
          isConnected: state == WebSocketState.connected,
        );
      });

  @override
  Stream<SignedEvent> get eventStream => _eventController.stream;

  @override
  Relay get relay => Relay(
        url: _dataSource.url,
        isConnected: _dataSource.state == WebSocketState.connected,
      );

  @override
  String get url => _dataSource.url;

  @override
  bool get isConnected => _dataSource.state == WebSocketState.connected;

  @override
  bool get isDisposed => _dataSource.state == WebSocketState.disposed;

  @override
  Future<bool> publishEvent(
    SignedEvent event, {
    int timeoutSec = 10,
  }) async {
    log('Publishing event: $event to relay ${_dataSource.url}');

    // Verify the event signature
    final isValid = event.verify();

    if (!isValid) {
      log('Event signature is invalid');
      return false;
    }

    // Set up a completer to wait for the OK message from the relay
    final completer = Completer<bool>();
    _eventAcceptedCompleters[event.id] = completer;

    // Send the event message to the relay
    final message = ClientMessageModel.event(event);
    _dataSource.sendMessage(message);

    // Wait for the completer or the timeout, whatever comes first
    final accepted = await Future.any([
      completer.future, // Completes if Ok is received
      Future.delayed(
        Duration(seconds: timeoutSec),
        () => false, // Return accepted as false if timeout occurs
      ),
    ]);

    return accepted;
  }

  @override
  Stream<SignedEvent> subscribe(
    Subscription subscription, {
    void Function(List<SignedEvent>)? onEose,
  }) {
    // Add the subscription to cache so it can be re-subscribed when the relay
    //  reconnects
    _subscriptions[subscription.id] = subscription;
    // Add the EoSE callback to cache so it can be called when the EoSE message
    //  is received
    if (onEose != null) {
      _subscriptionEoseCallbacks[subscription.id] = onEose;
    }
    // Use and store a controller so the stream to the caller doesn't notice
    // any interruptions if the relay disconnects and reconnects
    final controller = StreamController<SignedEvent>.broadcast();
    _subscriptionControllers[subscription.id] = controller;

    // Close relay subscription when the caller cancels the stream
    controller.onCancel = () {
      _dataSource.sendMessage(ClientMessageModel.close(subscription.id));
      _subscriptionControllers.remove(subscription.id);
    };

    // Now that the controller is setup to stream events,
    //  send the subscription message to start receiving them
    final message = ClientMessageModel.subscription(subscription);
    _dataSource.sendMessage(message);

    return controller.stream;
  }

  @override
  Future<List<SignedEvent>> getStoredEvents(
    List<Filters> filters,
  ) async {
    log('Requesting stored events with filters: $filters from relay ${_dataSource.url}');

    // Create a subscription with random id and the filters
    final subscriptionId = SecretGenerator.secretHex(64);
    final subscription = Subscription(
      id: subscriptionId,
      filters: filters,
    );

    // Set up a completer to wait for the EoSE message from the relay and pass
    // the completion as the eose callback of the subscribe method
    final completer = Completer<List<SignedEvent>>();
    subscribe(subscription, onEose: (List<SignedEvent> events) {
      completer.complete(events);
    });

    // Wait for the EoSE message with the stored events
    final storedEvents = await completer.future;

    // Clean up
    await closeSubscription(subscriptionId);

    return storedEvents;
  }

  @override
  Future<void> closeSubscription(
    String subscriptionId, {
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  }) async {
    log('Closing subscription $subscriptionId at relay ${_dataSource.url}');

    // Register a completer for the close response of the relay
    final completer = Completer();

    if (waitForRelayClosedMessage) {
      // Store the completer to wait for the relay closed message
      _subscriptionClosedCompleters[subscriptionId] = completer;
    } else {
      // Don't wait for relay closed message, so complete the completer already
      completer.complete();
    }

    // Send the close message to the relay
    final message = ClientMessageModel.close(subscriptionId);
    _dataSource.sendMessage(message);

    // Wait until timeout if relay closed message is not received
    await Future.any([
      completer.future,
      Future.delayed(
          Duration(seconds: timeoutSec)), // Completes if timeout occurs
    ]);

    // Clean up everything related to the subscription
    _subscriptions.remove(subscriptionId);
    final controller = _subscriptionControllers[subscriptionId];
    if (controller != null) {
      controller.close();
      _subscriptionControllers.remove(subscriptionId);
    }
    _subscriptionStoredEvents.remove(subscriptionId);
    _subscriptionEoseCallbacks.remove(subscriptionId);
    _subscriptionClosedCompleters.remove(subscriptionId);
  }

  @override
  Future<void> dispose({
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  }) async {
    // Close all subscriptions cleanly
    for (final subscription in _subscriptionControllers.keys) {
      await closeSubscription(
        subscription,
        waitForRelayClosedMessage: waitForRelayClosedMessage,
        timeoutSec: timeoutSec,
      );
    }

    // Close all streams and subscriptions
    await Future.wait([
      _relayMessageSubscription.cancel(),
      _relayStateSubscription.cancel(),
      _eventController.close(),
    ]);

    // Dispose the data source
    await _dataSource.dispose();
  }

  void _handleEventMessage(RelayEventMessageModel message) {
    final event = message.event;
    if (event.verify()) {
      // Put it on the general event stream
      _eventController.add(message.event);
      // Put it on the specific subscription stream
      final controller = _subscriptionControllers[message.subscriptionId];
      if (controller != null) {
        controller.add(message.event);
      }
      // If the subscription has an eose callback, store the event for it
      final eoseCallback = _subscriptionEoseCallbacks[message.subscriptionId];
      if (eoseCallback != null) {
        _subscriptionStoredEvents.putIfAbsent(
          message.subscriptionId,
          () => [],
        );
        _subscriptionStoredEvents[message.subscriptionId]!.add(message.event);
      }
    }
  }

  _handleEoseMessage(RelayEoseMessageModel message) {
    final storedEvents = _subscriptionStoredEvents[message.subscriptionId];
    final callback = _subscriptionEoseCallbacks[message.subscriptionId];
    if (callback != null) {
      callback(storedEvents ?? []);
    }

    // Clean up
    _subscriptionStoredEvents.remove(message.subscriptionId);
    _subscriptionEoseCallbacks.remove(message.subscriptionId);
  }

  _handleClosedMessage(RelayClosedMessageModel message) {
    final completer = _subscriptionClosedCompleters[message.subscriptionId];
    if (completer != null && !completer.isCompleted) {
      completer.complete();
    }

    // Clean up
    final controller = _subscriptionControllers[message.subscriptionId];
    if (controller != null) {
      controller.close();
      _subscriptionControllers.remove(message.subscriptionId);
    }
    _subscriptionStoredEvents.remove(message.subscriptionId);
    _subscriptionEoseCallbacks.remove(message.subscriptionId);
    _subscriptionClosedCompleters.remove(message.subscriptionId);
  }

  _handleOkMessage(RelayOkMessageModel message) {
    final eventId = message.eventId;
    final accepted = message.accepted;
    final completer = _eventAcceptedCompleters[eventId];
    if (completer != null && !completer.isCompleted) {
      completer.complete(accepted);
    }

    // Clean up
    _eventAcceptedCompleters.remove(eventId);
  }
}
