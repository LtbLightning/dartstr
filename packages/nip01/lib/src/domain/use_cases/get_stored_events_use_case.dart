import 'package:nip01/nip01.dart';

class GetStoredEventsUseCase {
  final EventRepository _eventRepository;
  final RelayRepository _relayRepository;

  GetStoredEventsUseCase({
    required EventRepository eventRepository,
    required RelayRepository relayRepository,
  })  : _eventRepository = eventRepository,
        _relayRepository = relayRepository;

  Future<List<Event>> execute(
    List<Filters> filters, {
    List<String>? relayUrls,
    int timeoutSec = 10,
  }) async {
    try {
      final relays = relayUrls?.map((url) => url.toString()).toList();
      if (relays != null) {
        await _relayRepository.addRelays(relays);
      }

      final events = await _eventRepository.getEvents(
        filters,
        relayUrls: relayUrls,
        timeoutSeconds: timeoutSec,
      );

      return events;
    } catch (e) {
      throw GetStoredEventsException(e.toString());
    }
  }
}

class GetStoredEventsException implements Exception {
  final String message;
  GetStoredEventsException(this.message);

  @override
  String toString() {
    return '[GetStoredEventsException] $message';
  }
}
