import 'package:nip47/src/data/mappers/wallet_connection_mapper.dart';
import 'package:nip47/src/data/models/connection_model.dart';
import 'package:nip47/src/database/database.dart';

abstract class LocalWalletConnectionDataSource {
  Future<void> store(WalletConnectionModel connection);
  Future<WalletConnectionModel?> getConnection(String clientPubkey);
  Future<List<WalletConnectionModel>> getConnections();
  Future<void> removeConnection(String clientPubkey);
}

class SqliteLocalWalletConnectionDataSource
    implements LocalWalletConnectionDataSource {
  final Nip47Database _database;

  SqliteLocalWalletConnectionDataSource({
    required Nip47Database database,
  }) : _database = database;

  @override
  Future<void> store(WalletConnectionModel connection) async {
    try {
      final tabelRow = WalletConnectionMapper.modelToTable(connection);
      await _database
          .into(_database.walletConnections)
          .insertOnConflictUpdate(tabelRow);
    } catch (e) {
      throw StoreConnectionException('$e');
    }
  }

  @override
  Future<WalletConnectionModel?> getConnection(
    String clientPubkey,
  ) async {
    final result = await _database.managers.walletConnections
        .filter((f) => f.clientPubkey(clientPubkey))
        .getSingleOrNull();

    if (result == null) {
      return null;
    }
    return WalletConnectionMapper.modelFromTable(result);
  }

  @override
  Future<List<WalletConnectionModel>> getConnections() async {
    final results = await _database.managers.walletConnections.get();

    return results
        .map((result) => WalletConnectionMapper.modelFromTable(result))
        .toList();
  }

  @override
  Future<void> removeConnection(String clientPubkey) {
    return _database.managers.walletConnections
        .filter((f) => f.clientPubkey(clientPubkey))
        .delete();
  }
}

class StoreConnectionException implements Exception {
  final String message;

  StoreConnectionException(this.message);

  @override
  String toString() {
    return 'SqliteLocalConnectionDataSource: $message';
  }
}
