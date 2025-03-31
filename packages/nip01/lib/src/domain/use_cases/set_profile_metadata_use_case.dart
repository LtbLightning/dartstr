import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/services/relay_manager_service.dart';

class SetProfileMetadataUseCase {
  final RelayManagerService _relays;

  SetProfileMetadataUseCase({
    required RelayManagerService relayManagerService,
  }) : _relays = relayManagerService;

  Future<bool> execute({
    required KeyPair userKeyPair,
    required Kind0Metadata metadata,
    List<String>? relayUrls,
    int successTreshold = 1,
    int timeoutSec = 10,
  }) async {
    try {
      // Make sure the relays are available in the relay manager
      if (relayUrls != null && relayUrls.isNotEmpty) {
        await _relays.addRelays(relayUrls);
      }

      final event = Event.unsigned(
        pubkey: userKeyPair.publicKey,
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        kind: 0,
        content: metadata.content,
      ).sign(userKeyPair);

      final success = await _relays.publishEvent(
        event,
        relayUrls: relayUrls,
        timeoutSec: timeoutSec,
      );
      if (!success) {
        throw Exception('Success treshold not reached');
      }

      return success;
    } catch (e) {
      throw FailedToSetProfileMetadataException(e.toString());
    }
  }
}

class FailedToSetProfileMetadataException implements Exception {
  final String message;

  FailedToSetProfileMetadataException(this.message);
}
