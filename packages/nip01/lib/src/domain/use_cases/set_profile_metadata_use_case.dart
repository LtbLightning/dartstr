import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/repositories/event_repository.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';

class SetProfileMetadataUseCase {
  final EventRepository _eventRepository;
  final RelayRepository _relayRepository;

  SetProfileMetadataUseCase({
    required EventRepository eventRepository,
    required RelayRepository relayRepository,
  })  : _eventRepository = eventRepository,
        _relayRepository = relayRepository;

  Future<List<String>> execute({
    required KeyPair userKeyPair,
    required Kind0Metadata metadata,
    List<String>? relayUrls,
    int timeoutSec = 10,
  }) async {
    try {
      // Make sure the relays are available in the relay manager
      for (final relayUrl in relayUrls ?? []) {
        await _relayRepository.addRelay(relayUrl);
      }

      if (_relayRepository.relays.isEmpty) {
        throw FailedToSetProfileMetadataException('No relays added');
      }

      final event = Event.create(
        keyPair: userKeyPair,
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        kind: 0,
        content: metadata.content,
      );

      final relaysAcceptedBy = await _eventRepository.publishEvent(
        event,
        relayUrls: relayUrls,
        timeoutSeconds: timeoutSec,
      );

      return relaysAcceptedBy;
    } catch (e) {
      throw FailedToSetProfileMetadataException(e.toString());
    }
  }
}

class FailedToSetProfileMetadataException implements Exception {
  final String message;

  FailedToSetProfileMetadataException(this.message);
}
