import 'package:nip01/nip01.dart';

class AddRelaysUseCase {
  final RelayRepository _relayRepository;

  AddRelaysUseCase({
    required RelayRepository relayRepository,
  }) : _relayRepository = relayRepository;

  Future<List<String>> execute(List<Uri> relayUrls) async {
    try {
      if (relayUrls.isEmpty) {
        throw AddRelaysException('Relay URLs cannot be empty');
      }

      final addedRelays = await _relayRepository
          .addRelays(relayUrls.map((uri) => uri.toString()).toList());

      return addedRelays;
    } catch (e) {
      throw AddRelaysException(e.toString());
    }
  }
}

class AddRelaysException implements Exception {
  final String message;

  AddRelaysException(this.message);
}
