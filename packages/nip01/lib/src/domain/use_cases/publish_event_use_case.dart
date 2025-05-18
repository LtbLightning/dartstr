import 'dart:async';
import 'dart:developer';

import 'package:nip01/nip01.dart';

class PublishEventUseCase {
  final EventRepository _eventRepository;
  final RelayRepository _relayRepository;

  PublishEventUseCase({
    required EventRepository eventRepository,
    required RelayRepository relayRepository,
  })  : _eventRepository = eventRepository,
        _relayRepository = relayRepository;

  Future<List<String>> execute(
    Event event, {
    List<Uri>? relayUrls,
    bool waitForOkMessage = true,
    int okMessageTimeOutSeconds = 10,
  }) async {
    try {
      final relays = relayUrls?.map((url) => url.toString()).toList();
      if (relays != null) {
        await _relayRepository.addRelays(relays);
      }

      // Listen to the OK messages if we are waiting for them
      final okCompleters = <String, Completer<bool>>{};
      StreamSubscription<OkMessage>? okSub;
      if (waitForOkMessage) {
        okSub = _eventRepository.okStream.where((okMessage) {
          return okMessage.eventId == event.id;
        }).listen((okMessage) {
          log('[PublishEventUseCase] Received OK message: ${okMessage.accepted}'
              ' for event: ${okMessage.eventId} from relay ${okMessage.relayUrl}');
          // Make sure we have a completer for the relay, else put one
          final okCompleter = okCompleters.putIfAbsent(
            okMessage.relayUrl,
            () => Completer<bool>(),
          );
          okCompleter.complete(okMessage.accepted);
        });
      }

      // Publish the event
      List<String> relaysPublishedTo = await _eventRepository.publishEvent(
        event,
        relayUrls: relayUrls?.map((url) => url.toString()).toList(),
      );
      log('[PublishEventUseCase] Event published to: $relaysPublishedTo');

      // Make sure we have a completer for each relay that we sent the event to
      for (var relay in relaysPublishedTo) {
        okCompleters.putIfAbsent(relay, () => Completer<bool>());
      }

      // Wait for the OK messages or the timeout, whichever comes first
      if (waitForOkMessage) {
        final relaysThatAcceptedOrNull =
            await Future.wait(relaysPublishedTo.map((relay) async {
          final completer = okCompleters[relay];
          if (completer != null) {
            final accepted = await completer.future.timeout(
              Duration(seconds: okMessageTimeOutSeconds),
              onTimeout: () {
                log('[PublishEventUseCase] Timeout waiting for OK from $relay');
                return false;
              },
            );
            return accepted ? relay : null;
          }
          return Future.value(null);
        }));
        // Filter the relays that didn't accept the event
        relaysPublishedTo =
            relaysThatAcceptedOrNull.whereType<String>().toList();
      }
      // Cancel the stream subscription
      await okSub?.cancel();

      // Return the relays that accepted the OK messages
      return relaysPublishedTo;
    } catch (e) {
      if (e is OkNotReceivedException) {
        rethrow;
      }
      throw PublishEventException('$e');
    }
  }
}

class PublishEventException implements Exception {
  final String message;

  PublishEventException(this.message);

  @override
  String toString() => '[PublishEventUseCase]: $message';
}

class OkNotReceivedException implements Exception {
  final String message;

  OkNotReceivedException(this.message);

  @override
  String toString() => '[PublishEventUseCase]: $message';
}
