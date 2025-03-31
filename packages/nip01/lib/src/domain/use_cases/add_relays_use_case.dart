import 'package:nip01/nip01.dart';

class AddRelaysUseCase {
  final RelayManagerService _relayManager;

  AddRelaysUseCase({
    required RelayManagerService relayManagerService,
  }) : _relayManager = relayManagerService;

  Future<List<Stream<Relay>>> execute(List<String> relayUrls) async {
    try {
      final streams = await _relayManager.addRelays(relayUrls);
      return streams;
    } catch (e) {
      throw AddRelaysException(e.toString());
    }
  }
}

class AddRelaysException implements Exception {
  final String message;

  AddRelaysException(this.message);
}
