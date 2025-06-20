import 'package:nip47/src/domain/entities/connection.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class GetWalletConnectionByClientPubkeyUseCase {
  final WalletConnectionRepository _walletConnectionRepository;

  GetWalletConnectionByClientPubkeyUseCase(
      {required WalletConnectionRepository walletConnectionRepository})
      : _walletConnectionRepository = walletConnectionRepository;

  Future<WalletConnection?> execute(String clientPubkey) async {
    try {
      final connection = await _walletConnectionRepository
          .getConnectionByClientPubkey(clientPubkey);
      return connection;
    } catch (e) {
      throw GetWalletConnectionByClientPubkeyException(
          'Failed to get connection: $e');
    }
  }
}

class GetWalletConnectionByClientPubkeyException implements Exception {
  final String message;

  GetWalletConnectionByClientPubkeyException(this.message);

  @override
  String toString() => '[GetWalletConnectionByClientPubkeyException]: $message';
}
