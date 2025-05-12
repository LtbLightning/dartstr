import 'dart:developer';

import 'package:nip01/nip01.dart';

class AddRelaysUseCase {
  final RelayRepository _relayRepository;

  AddRelaysUseCase({
    required RelayRepository relayRepository,
  }) : _relayRepository = relayRepository;

  Future<List<Uri>> execute(List<Uri> relayUrls) async {
    try {
      if (relayUrls.isEmpty) {
        throw AddRelaysException('Relay URLs cannot be empty');
      }

      final relayAdditionResults = await Future.wait(
        relayUrls.map(
          (url) async {
            try {
              await _relayRepository.addRelay(url.toString());
              return url;
            } catch (e) {
              log('Failed to add relay: $url, error: $e');
              return null;
            }
          },
        ),
      );

      return relayAdditionResults.whereType<Uri>().toList();
    } catch (e) {
      throw AddRelaysException(e.toString());
    }
  }
}

class AddRelaysException implements Exception {
  final String message;

  AddRelaysException(this.message);
}
