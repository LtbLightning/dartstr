import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/repositories/event_repository.dart';

class WatchEventsUseCase {
  final EventRepository _eventRepository;

  WatchEventsUseCase({
    required EventRepository eventRepository,
  }) : _eventRepository = eventRepository;

  Stream<EventMessage> execute({
    List<String>? pubkeys,
    List<int>? kinds,
    List<List<String>>? tags,
    List<String>? relayUrls,
    List<String>? subscriptionIds,
  }) {
    try {
      return _eventRepository.eventStream.where((event) {
        if (pubkeys != null && !pubkeys.contains(event.event.pubkey)) {
          return false;
        }
        if (kinds != null && !kinds.contains(event.event.kind)) {
          return false;
        }
        if (tags != null) {
          for (final tag in tags) {
            if (!event.event.tags
                .any((e) => e[0] == tag[0] && e[1] == tag[1])) {
              return false;
            }
          }
        }
        if (relayUrls != null && !relayUrls.contains(event.relayUrl)) {
          return false;
        }
        if (subscriptionIds != null &&
            !subscriptionIds.contains(event.subscriptionId)) {
          return false;
        }

        return true;
      });
    } catch (e) {
      throw WatchEventsException('$e');
    }
  }
}

class WatchEventsException implements Exception {
  final String message;

  WatchEventsException(this.message);

  @override
  String toString() => '[WatchEventsUseCase]: $message';
}
