import 'dart:async';
import 'dart:developer';

import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/src/data/data_sources/web_socket_data_source.dart';
import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/domain/entities/event.dart';
import 'package:nip01/src/domain/entities/filters.dart';
import 'package:nip01/src/domain/entities/relay.dart';
import 'package:nip01/src/domain/entities/subscription.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';

class RelayRepositoryImpl implements RelayRepository {
  final WebSocketDataSource _dataSource;

  RelayRepositoryImpl(this._dataSource);

  @override
  Stream<Relay> get relayStream => _dataSource.states.map((state) {
        return Relay(
          url: _dataSource.url,
          isConnected: state == WebSocketState.connected,
          isDisposed: state == WebSocketState.disposed,
        );
      });

  @override
  Relay get relay => Relay(
        url: _dataSource.url,
        isConnected: _dataSource.state == WebSocketState.connected,
        isDisposed: _dataSource.state == WebSocketState.disposed,
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
    final isValid = event.verify();

    if (!isValid) {
      log('Event signature is invalid');
      return false;
    }

    final message = ClientMessageModel.event(event);
    final completer = Completer<bool>();

    final subscription = _dataSource.messages.listen((message) {
      log('Received message: $message');
      if (message is RelayOkMessageModel && message.eventId == event.id) {
        if (!completer.isCompleted) {
          completer.complete(true); // Successfully received acknowledgment
        }
      }
    });

    try {
      _dataSource.sendMessage(message);

      // Use Future.any to complete as soon as one of the futures completes
      final result = await Future.any([
        completer.future, // Completes if Ok is received
        Future.delayed(Duration(seconds: timeoutSec),
            () => false), // Completes if timeout occurs
      ]);

      return result;
    } catch (e) {
      log('Error publishing event: $e');
      return false;
    } finally {
      await subscription.cancel(); // Clean up listener
      if (!completer.isCompleted) {
        // Complete completer to avoid memory leak
        completer.complete(false);
      }
    }
  }

  @override
  Stream<SignedEvent> subscribe(
    Subscription subscription, {
    void Function(List<SignedEvent>)? onEose,
  }) {
    // Setup the stream to receive events and return to the caller
    final controller = StreamController<SignedEvent>.broadcast();
    bool isEoseReceived = false;
    final List<SignedEvent> storedEvents = []; // Store events before EoSE

    final sub = _dataSource.messages.listen((relayMessage) {
      if (relayMessage is RelayEventMessageModel &&
          relayMessage.subscriptionId == subscription.id &&
          relayMessage.event.verify()) {
        // Store events before EoSE
        if (!isEoseReceived) {
          storedEvents.add(relayMessage.event);
        }
        controller.add(relayMessage.event);
      } else if (relayMessage is RelayEoseMessageModel &&
          relayMessage.subscriptionId == subscription.id) {
        // When EoSE is received, call onEose with stored events
        isEoseReceived = true;
        if (onEose != null) {
          onEose(storedEvents);
        }
      }
    });

    // Close relay subscription when the caller cancels the stream
    controller.onCancel = () {
      sub.cancel();
      _dataSource.sendMessage(ClientMessageModel.close(subscription.id));
    };

    // Now that the stream is setup to receive events,
    //  send the subscription message to start
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

    // Setup the stream to receive events from the subscription
    final List<SignedEvent> storedEvents = [];
    final completer = Completer(); // Completer to signal for EoSE
    final sub = _dataSource.messages.listen((relayMessage) {
      if (relayMessage is RelayEventMessageModel &&
          relayMessage.subscriptionId == subscriptionId &&
          relayMessage.event.verify()) {
        storedEvents.add(relayMessage.event);
      } else if (relayMessage is RelayEoseMessageModel &&
          relayMessage.subscriptionId == subscriptionId) {
        // When EoSE is received, complete the completer
        completer.complete();
      }
    });

    // Now that the stream is setup, send the subscription message to start
    //  reveiving events.
    final message = ClientMessageModel.subscription(subscription);
    _dataSource.sendMessage(message);

    // Wait for the EoSE message
    await completer.future;

    // Close relay subscription and clean up
    _dataSource.sendMessage(ClientMessageModel.close(subscriptionId));
    sub.cancel();

    return storedEvents;
  }

  @override
  Future<void> closeSubscription(
    String subscriptionId, {
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  }) async {
    log('Closing subscription $subscriptionId at relay ${_dataSource.url}');

    final completer =
        Completer(); // To wait for the close response of the relay
    StreamSubscription? sub;

    if (waitForRelayClosedMessage) {
      sub = _dataSource.messages.listen((relayMessage) {
        if (relayMessage is RelayClosedMessageModel &&
            relayMessage.subscriptionId == subscriptionId) {
          completer.complete();
        }
      });
    } else {
      // Don't wait for relay closed message
      completer.complete();
    }

    final message = ClientMessageModel.close(subscriptionId);
    _dataSource.sendMessage(message);

    // Wait until timeout if relay closed message is not received
    await Future.any([
      completer.future, // Completes if closed message is received
      Future.delayed(
          Duration(seconds: timeoutSec)), // Completes if timeout occurs
    ]);

    // Clean up
    sub?.cancel();
  }
}
