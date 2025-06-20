import 'package:nip01/nip01.dart';

class RemoveRelayUseCase {
  final RelayRepository _relayRepository;

  RemoveRelayUseCase({
    required RelayRepository relayRepository,
  }) : _relayRepository = relayRepository;

  Future<void> execute(String relayUrl) async {
    try {
      await _relayRepository.removeRelay(relayUrl);
    } catch (e) {
      throw RemoveRelayException(e.toString());
    }
  }
}

class RemoveRelayException implements Exception {
  final String message;

  RemoveRelayException(this.message);
}
