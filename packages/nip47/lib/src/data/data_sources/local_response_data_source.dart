import 'package:drift/drift.dart';
import 'package:nip47/src/data/mappers/response_mapper.dart';
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
      final tabelRow = ResponseMapper.modelToTable(response);
      await _database
          .into(_database.responses)
          .insertOnConflictUpdate(tabelRow);
    } catch (e) {
      throw StoreResponseException('$e');
    }
  }

  @override
  Future<ResponseEventModel?> getResponse(String id) async {
    final responseWithRequest = await (_database.select(_database.responses)
          ..where((tbl) => tbl.id.equals(id)))
        .join([
      innerJoin(
        _database.requests,
        _database.requests.id.equalsExp(_database.responses.requestId),
      ),
    ]).getSingleOrNull();

    if (responseWithRequest == null) return null;

    final responseRow = responseWithRequest.readTable(_database.responses);
    final requestRow = responseWithRequest.readTable(_database.requests);

    return ResponseMapper.modelFromTable(
      responseRow,
      clientPubkey: requestRow.clientPubkey,
    );
  }

  @override
  Future<List<ResponseEventModel>> getResponses([String? clientPubkey]) async {
    final query = _database.select(_database.responses).join([
      innerJoin(
        _database.requests,
        _database.requests.id.equalsExp(_database.responses.requestId),
      ),
    ]);

    if (clientPubkey != null) {
      query.where(_database.requests.clientPubkey.equals(clientPubkey));
    }

    final rows = await query.get();

    return rows.map((row) {
      final responseRow = row.readTable(_database.responses);
      final requestRow = row.readTable(_database.requests);

      return ResponseMapper.modelFromTable(
        responseRow,
        clientPubkey: requestRow.clientPubkey,
      );
    }).toList();
  }

  @override
  Future<void> removeClientConnectionResponses(String clientPubkey) {
    return _database.managers.responses
        .filter((f) => f.requestId.clientPubkey.clientPubkey(clientPubkey))
        .delete();
  }
}

class StoreResponseException implements Exception {
  final String message;

  StoreResponseException(this.message);

  @override
  String toString() => 'SqliteLocalResponseDataSource: $message';
}
