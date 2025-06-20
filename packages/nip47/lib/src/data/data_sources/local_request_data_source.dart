import 'package:nip47/src/data/mappers/request_mapper.dart';
import 'package:nip47/src/data/models/request_model.dart';
import 'package:nip47/src/database/database.dart';

abstract class LocalRequestDataSource {
  Future<void> storeRequest(RequestEventModel request);
  Future<RequestEventModel?> getRequest(String id);
  Future<List<RequestEventModel>> getRequests();
  Future<void> removeClientConnectionRequests(
    String clientPubkey,
  );
}

class SqliteLocalRequestDataSource implements LocalRequestDataSource {
  final Nip47Database _database;

  SqliteLocalRequestDataSource({
    required Nip47Database database,
  }) : _database = database;

  @override
  Future<void> storeRequest(RequestEventModel request) async {
    try {
      final tabelRow = RequestMapper.modelToTable(request);
      await _database.into(_database.requests).insertOnConflictUpdate(tabelRow);
    } catch (e) {
      throw StoreRequestException('$e');
    }
  }

  @override
  Future<RequestEventModel?> getRequest(String id) async {
    final result = await _database.managers.requests
        .filter((f) => f.id(id))
        .getSingleOrNull();

    if (result == null) {
      return null;
    }
    return RequestMapper.modelFromTable(result);
  }

  @override
  Future<List<RequestEventModel>> getRequests({
    String? clientPubkey,
  }) async {
    final results = await _database.managers.requests
        .filter((f) => f.clientPubkey.clientPubkey(clientPubkey))
        .get();
    return results
        .map((result) => RequestMapper.modelFromTable(result))
        .toList();
  }

  @override
  Future<void> removeClientConnectionRequests(String clientPubkey) {
    return _database.managers.requests
        .filter((f) => f.clientPubkey.clientPubkey(clientPubkey))
        .delete();
  }
}

class StoreRequestException implements Exception {
  final String message;

  StoreRequestException(this.message);

  @override
  String toString() => 'SqliteLocalRequestDataSource: $message';
}
