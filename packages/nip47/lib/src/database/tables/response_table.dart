import 'package:drift/drift.dart';

@DataClassName('ResponseTable')
class Responses extends Table {
  late final id = text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
  TextColumn get requestId =>
      text().customConstraint('NOT NULL REFERENCES requests(id)')();
  TextColumn get result => text().nullable()();
  TextColumn get errorCode => text().nullable()();
  TextColumn get errorMessage => text().nullable()();
  TextColumn get multiId => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}
