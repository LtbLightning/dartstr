import 'package:nip01/nip01.dart';

class GetProfileMetadataUseCase {
  final EventRepository _eventRepository;
  final RelayRepository _relayRepository;

  GetProfileMetadataUseCase({
    required EventRepository eventRepository,
    required RelayRepository relayRepository,
  })  : _eventRepository = eventRepository,
        _relayRepository = relayRepository;

  Future<Kind0Metadata?> execute(
    String userPubkey, {
    List<String>? relayUrls,
    int timeoutSec = 10,
  }) async {
    try {
      final relays = relayUrls?.map((url) => url.toString()).toList();
      if (relays != null) {
        await _relayRepository.addRelays(relays);
      }

      final filter = Filters(authors: [userPubkey], kinds: const [0]);

      final events = await _eventRepository.getEvents(
        [filter],
        relayUrls: relayUrls,
        timeoutSeconds: timeoutSec,
      );

      if (events.isEmpty) {
        return null;
      }

      final latestEvent = events.reduce(
        (a, b) => a.createdAt > b.createdAt ? a : b,
      ); // Get the latest event which is the most recent metadata

      final metadata = Kind0Metadata.fromContent(latestEvent.content);

      return metadata;
    } catch (e) {
      throw GetProfileMetadataException(e.toString());
    }
  }
}

class GetProfileMetadataException implements Exception {
  final String message;

  GetProfileMetadataException(this.message);
}
