import 'dart:developer';

import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/repositories/response_repository.dart';

class SendResponseUseCase {
  final ResponseRepository _responseRepository;

  SendResponseUseCase({
    required ResponseRepository responseRepository,
  }) : _responseRepository = responseRepository;

  Future<ResponseEvent> execute(
    Response response, {
    required String walletServicePrivateKey,
    bool waitForOkMessage = true,
  }) async {
    try {
      final event = await _responseRepository.sendResponse(
        response: response,
        walletServicePrivateKey: walletServicePrivateKey,
        waitForOkMessage: waitForOkMessage,
      );

      return event;
    } catch (e) {
      // Handle any errors that occur during the sending process
      log('[SendResponseUseCase] Error sending response: ${e.toString()}');
      throw SendResponseException('$e');
    }
  }
}

class SendResponseException implements Exception {
  final String message;

  SendResponseException(this.message);

  @override
  String toString() => '[SendResponseUseCase]: $message';
}
