import 'package:nip47/src/domain/entities/connection.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class GetWalletConnectionsUseCase {
  final WalletConnectionRepository _walletConnectionRepository;

  GetWalletConnectionsUseCase({
    required WalletConnectionRepository walletConnectionRepository,
  }) : _walletConnectionRepository = walletConnectionRepository;

  Future<List<WalletConnection>> execute() async {
    try {
      final connections = await _walletConnectionRepository.getConnections();
      return connections;
    } catch (e) {
      throw GetWalletConnectionsException('$e');
    }
  }
}

class GetWalletConnectionsException implements Exception {
  final String message;

  GetWalletConnectionsException(this.message);

  @override
  String toString() => '[GetWalletConnectionsUseCase]: $message';
}
