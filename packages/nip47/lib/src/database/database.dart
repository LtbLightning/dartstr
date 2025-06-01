import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:nip47/src/database/tables/wallet_connection_table.dart';
import 'package:nip47/src/database/tables/request_table.dart';
import 'package:nip47/src/database/tables/response_table.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

part 'generated/database.g.dart';

@DriftDatabase(tables: [
  WalletConnections,
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

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(beforeOpen: (details) async {
      if (details.wasCreated) {
        // ...
      }
      // Needed to enable foreign keys for SQLite and references in Drift
      await customStatement('PRAGMA foreign_keys = ON');
    });
  }

  static QueryExecutor _openConnection() {
    return NativeDatabase.createInBackground(File('dartstr_nip47.db'));
  }
}
