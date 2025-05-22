import 'package:nip47/src/domain/repositories/request_repository.dart';
import 'package:nip47/src/domain/repositories/response_repository.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class RemoveConnectionUseCase {
  final WalletConnectionRepository _walletConnectionRepository;
  final RequestRepository _requestRepository;
  final ResponseRepository _responseRepository;

  RemoveConnectionUseCase(
      {required WalletConnectionRepository walletConnectionRepository,
      required RequestRepository requestRepository,
      required ResponseRepository responseRepository})
      : _walletConnectionRepository = walletConnectionRepository,
        _requestRepository = requestRepository,
        _responseRepository = responseRepository;

  Future<void> execute(String clientPubkey) async {
    try {
      await Future.wait([
        _walletConnectionRepository.removeConnection(clientPubkey),
        _requestRepository.removeRequests(clientPubkey: clientPubkey),
        _responseRepository.removeResponses(clientPubkey: clientPubkey),
      ]);
    } catch (e) {
      throw RemoveConnectionException(
        'Failed to remove connection for client $clientPubkey: $e',
      );
    }
  }
}

class RemoveConnectionException implements Exception {
  final String message;

  RemoveConnectionException(this.message);

  @override
  String toString() {
    return '[RemoveConnectionException] $message';
  }
}
