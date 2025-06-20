import 'package:nip01/nip01.dart';
import 'package:nip47/nip47.dart';

class ResumeWalletConnectionUseCase {
  final RequestRepository _requestRepository;

  ResumeWalletConnectionUseCase({
    required RequestRepository requestRepository,
  }) : _requestRepository = requestRepository;

  Future<void> execute(
    WalletConnection connection, {
    required KeyPair walletServiceKeyPair,
  }) async {
    try {
      await _requestRepository.subscribeToRequests(
        clientPubkey: connection.clientPubkey,
        walletServiceKeyPair: walletServiceKeyPair,
        relayUrls: connection.relays,
      );
    } catch (e) {
      throw ResumeWalletConnectionException(
        '$e',
      );
    }
  }
}

class ResumeWalletConnectionException implements Exception {
  final String message;

  ResumeWalletConnectionException(this.message);

  @override
  String toString() => '[ResumeWalletConnectionUseCase]: $message';
}
