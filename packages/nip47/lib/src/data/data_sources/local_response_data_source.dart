import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/database/database.dart';

abstract class LocalResponseDataSource {
  Future<void> storeResponse(ResponseEventModel response);
  Future<ResponseEventModel?> getResponse(String id);
  Future<List<ResponseEventModel>> getResponses();
  Future<void> removeClientConnectionResponses(
    String clientPubkey,
  );
}

class SqliteLocalResponseDataSource implements LocalResponseDataSource {
  final Nip47Database _database;

  SqliteLocalResponseDataSource({
    required Nip47Database database,
  }) : _database = database;

  @override
  Future<void> storeResponse(ResponseEventModel response) async {
    try {
      final tabelRow = response.toTable();
      await _database
          .into(_database.responses)
          .insertOnConflictUpdate(tabelRow);
    } catch (e) {
      throw StoreResponseException('$e');
    }
  }

  @override
  Future<ResponseEventModel?> getResponse(String id) async {
    final result = await _database.managers.responses
        .filter((f) => f.id(id))
        .getSingleOrNull();

    if (result == null) {
      return null;
    }
    return result.toResponseEventModel();
  }

  @override
  Future<List<ResponseEventModel>> getResponses({
    String? clientPubkey,
  }) async {
    final results = await _database.managers.responses
        .filter((f) => f.clientPubkey(clientPubkey))
        .get();
    return results.map((result) => result.toResponseEventModel()).toList();
  }

  @override
  Future<void> removeClientConnectionResponses(String clientPubkey) {
    return _database.managers.responses
        .filter((f) => f.clientPubkey(clientPubkey))
        .delete();
  }
}

class StoreResponseException implements Exception {
  final String message;

  StoreResponseException(this.message);

  @override
  String toString() => 'SqliteLocalResponseDataSource: $message';
}
