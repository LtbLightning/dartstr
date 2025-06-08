import 'package:nip47/src/domain/entities/entities.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class UpdateWalletConnectionUseCase {
  final WalletConnectionRepository _walletConnectionRepository;

  UpdateWalletConnectionUseCase({
    required WalletConnectionRepository walletConnectionRepository,
  }) : _walletConnectionRepository = walletConnectionRepository;

  Future<void> execute(WalletConnection connection) async {
    try {
      await _walletConnectionRepository.updateConnection(connection);
    } catch (e) {
      throw UpdateWalletConnectionException('Failed to update connection: $e');
    }
  }
}

class UpdateWalletConnectionException implements Exception {
  final String message;

  UpdateWalletConnectionException(this.message);

  @override
  String toString() => '[UpdateWalletConnectionException]: $message';
}
