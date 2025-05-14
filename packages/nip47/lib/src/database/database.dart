import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:nip47/src/database/tables/client_connection_table.dart';
import 'package:nip47/src/database/tables/request_table.dart';
import 'package:nip47/src/database/tables/response_table.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  ClientConnections,
  Requests,
  Responses,
])
class Nip47Database extends _$Nip47Database {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  Nip47Database([QueryExecutor? executor])
      : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return NativeDatabase.createInBackground(File('dartstr_nip47.db'));
  }
}
