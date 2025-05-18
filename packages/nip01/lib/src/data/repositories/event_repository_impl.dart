import 'dart:async';
import 'dart:developer';

import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/src/data/data_sources/relay_data_source.dart';
import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/event_model.dart';
import 'package:nip01/src/data/models/filters_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final RelayDataSource _relayDataSource;
  final StreamController<EventMessage> _eventBroadcaster;
  final StreamController<OkMessage> _okBroadcaster;
  final StreamController<EoseMessage> _eoseBroadcaster;

  EventRepositoryImpl({
    required RelayDataSource relayDataSource,
  })  : _relayDataSource = relayDataSource,
        _eventBroadcaster = StreamController<EventMessage>.broadcast(),
        _okBroadcaster = StreamController<OkMessage>.broadcast(),
        _eoseBroadcaster = StreamController<EoseMessage>.broadcast() {
    _relayDataSource.messageStream.listen(
      (message) {
        switch (message) {
          case RelayEventMessageModel _:
            _handleEventMessage(message);
          case RelayOkMessageModel _:
            log('[EventRepositoryImpl] Received OK message: ${message.accepted} for event: ${message.eventId} from relay ${message.relayUrl}');
            _handleOkMessage(message);
          case RelayEoseMessageModel _:
            _handleEoseMessage(message);
          case _:
          // Other message types are handled in other repositories
        }
      },
    );
  }

  @override
  Stream<EventMessage> get eventStream => _eventBroadcaster.stream;

  @override
  Stream<OkMessage> get okStream => _okBroadcaster.stream;

  @override
  Stream<EoseMessage> get eoseStream => _eoseBroadcaster.stream;

  @override
  Future<List<String>> publishEvent(
    Event event, {
    List<String>? relayUrls,
  }) async {
    final relays = relayUrls ?? _relayDataSource.relayUrls;
    log('[EventRepositoryImpl] Publishing event: $event to $relays');

    // Send the event message to the relay
    final message = ClientMessageModel.event(EventModel.fromEvent(event));
    final relaysSentTo =
        await _relayDataSource.sendMessage(message, relayUrls: relayUrls);
    log('[EventRepositoryImpl] Successfully sent event message: $message to $relaysSentTo');

    return relaysSentTo;
  }

  @override
  Future<List<Event>> getEvents(
    List<Filters> filters, {
    List<String>? relayUrls,
    int timeoutSeconds = 10,
  }) async {
    final relays = relayUrls ?? _relayDataSource.relayUrls;
    log('[EventRepositoryImpl] Getting events: $filters from $relays');

    // Cache the events and EoSE receptions
    final events = <String, Event>{};
    final eoses = <String, Completer<void>>{};
    for (final relay in relays) {
      eoses[relay] = Completer<void>();
    }

    // Create a temporary subscription for the events
    final subscriptionId = SecretGenerator.secretHex(64);
    final message = ClientMessageModel.subscription(
      subscriptionId: subscriptionId,
      filters:
          filters.map((filter) => FiltersModel.fromEntity(filter)).toList(),
    );

    // Start listening to the event and EoSE streams
    final eventSub = eventStream
        .where((event) => event.subscriptionId == subscriptionId)
        .listen((event) {
      events.putIfAbsent(event.event.id, () => event.event);
    });
    final eoseSub = eoseStream
        .where((eose) => eose.subscriptionId == subscriptionId)
        .listen((eose) {
      eoses[eose.relayUrl]?.complete();
    });

    // Send the subscription message to the relays
    final sentToRelays =
        await _relayDataSource.sendMessage(message, relayUrls: relays);

    // Wait for the EoSE messages or the timeout, whichever comes first
    final futures = <Future<void>>[];
    for (final relay in sentToRelays) {
      final completer = eoses[relay];
      if (completer != null) {
        futures.add(completer.future.timeout(
          Duration(seconds: timeoutSeconds),
          onTimeout: () {
            log('[EventRepositoryImpl] Timeout waiting for EoSE from $relay');
            return;
          },
        ));
      }
    }
    await Future.wait(futures);

    // Cancel the subscription
    await _relayDataSource.sendMessage(
      ClientMessageModel.close(subscriptionId),
      relayUrls: sentToRelays,
    );
    await Future.wait([eventSub.cancel(), eoseSub.cancel()]);

    // Return the events
    final eventList = events.values.toList();

    log('[EventRepositoryImpl] Received events: $eventList from $sentToRelays');
    return eventList;
  }

  void _handleEventMessage(RelayEventMessageModel message) {
    log('[EventRepositoryImpl] Received event: ${message.event} from relay ${message.relayUrl}');
    final eventModel = message.event;
    if (eventModel.isValid) {
      final eventMessage = EventMessage(
        event: eventModel.toEvent(),
        subscriptionId: message.subscriptionId,
        relayUrl: message.relayUrl,
      );
      // Put it on the event stream
      _eventBroadcaster.add(eventMessage);
    } else {
      log('[EventRepositoryImpl] Event signature is invalid: ${eventModel.id}');
    }
  }

  _handleOkMessage(RelayOkMessageModel message) {
    log('[EventRepositoryImpl] Received OK message: ${message.accepted} for event: ${message.eventId} from relay ${message.relayUrl}');

    final okMessage = OkMessage(
      eventId: message.eventId,
      accepted: message.accepted,
      relayUrl: message.relayUrl,
      message: message.message,
    );

    // Put it on the ok stream
    _okBroadcaster.add(okMessage);
  }

  _handleEoseMessage(RelayEoseMessageModel message) {
    log('[EventRepositoryImpl] Received EoSE event for subscription: '
        '${message.subscriptionId} from relay ${message.relayUrl}');

    final eoseMessage = EoseMessage(
      subscriptionId: message.subscriptionId,
      relayUrl: message.relayUrl,
    );

    // Put it on the eose stream
    _eoseBroadcaster.add(eoseMessage);
  }
}
