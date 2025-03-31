import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/services/relay_manager_service.dart';

class GetProfileMetadataUseCase {
  final RelayManagerService _relays;

  GetProfileMetadataUseCase({
    required RelayManagerService relayManagerService,
  }) : _relays = relayManagerService;

  Future<Kind0Metadata> execute(
    String userPubkey, {
    List<String>? relayUrls,
  }) async {
    try {
      // Make sure the relays are available in the relay manager
      if (relayUrls != null && relayUrls.isNotEmpty) {
        await _relays.addRelays(relayUrls);
      }

      final filter = Filters(authors: [userPubkey], kinds: const [0]);

      final events =
          await _relays.getStoredEvents([filter], relayUrls: relayUrls);

      if (events.isEmpty) {
        throw Exception('No metadata found for $userPubkey');
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
