import 'package:nip01/nip01.dart';

class RemoveRelayUseCase {
  final RelayManagerService _relayManager;

  RemoveRelayUseCase({
    required RelayManagerService relayManagerService,
  }) : _relayManager = relayManagerService;

  Future<void> execute(String relayUrl) async {
    try {
      _relayManager.removeRelays([relayUrl]);
    } catch (e) {
      throw RemoveRelayException(e.toString());
    }
  }
}

class RemoveRelayException implements Exception {
  final String message;

  RemoveRelayException(this.message);
}
