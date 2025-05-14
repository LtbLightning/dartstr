import 'package:nip47/src/data/models/client_connection_model.dart';
import 'package:nip47/src/database/database.dart';

abstract class LocalClientConnectionDataSource {
  Future<void> store(ClientConnectionModel clientConnection);
  Future<ClientConnectionModel?> getClientConnection(String clientPubkey);
  Future<List<ClientConnectionModel>> getClientConnections();
  Future<void> removeClientConnection(String clientPubkey);
}

class SqliteLocalClientConnectionDataSource
    implements LocalClientConnectionDataSource {
  final Nip47Database _database;

  SqliteLocalClientConnectionDataSource({
    required Nip47Database database,
  }) : _database = database;

  @override
  Future<void> store(ClientConnectionModel clientConnection) async {
    try {
      final tabelRow = clientConnection.toTable();
      await _database
          .into(_database.clientConnections)
          .insertOnConflictUpdate(tabelRow);
    } catch (e) {
      throw StoreClientConnectionException('$e');
    }
  }

  @override
  Future<ClientConnectionModel?> getClientConnection(
    String clientPubkey,
  ) async {
    final result = await _database.managers.clientConnections
        .filter((f) => f.clientPubkey(clientPubkey))
        .getSingleOrNull();

    if (result == null) {
      return null;
    }
    return result.toClientConnectionModel();
  }

  @override
  Future<List<ClientConnectionModel>> getClientConnections() async {
    final results = await _database.managers.clientConnections.get();

    return results.map((result) => result.toClientConnectionModel()).toList();
  }

  @override
  Future<void> removeClientConnection(String clientPubkey) {
    return _database.managers.clientConnections
        .filter((f) => f.clientPubkey(clientPubkey))
        .delete();
  }
}

class StoreClientConnectionException implements Exception {
  final String message;

  StoreClientConnectionException(this.message);

  @override
  String toString() {
    return 'SqliteLocalClientConnectionDataSource: $message';
  }
}
