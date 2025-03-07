import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/services/relay_manager_service.dart';

class SetProfileMetadataUseCase {
  final RelayManagerService _relays;

  SetProfileMetadataUseCase({
    required RelayManagerService relays,
  }) : _relays = relays;

  Future<bool> execute({
    required KeyPair userKeyPair,
    required Kind0Metadata metadata,
    List<String>? relayUrls,
    int successTreshold = 1,
    int timeoutSec = 5,
  }) async {
    try {
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
