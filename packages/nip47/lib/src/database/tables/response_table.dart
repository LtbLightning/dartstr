import 'package:drift/drift.dart';
import 'package:nip47/src/database/tables/request_table.dart';
import 'package:nip47/src/database/type_converters/date_time_converter.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

@DataClassName('ResponseTable')
class Responses extends Table {
  late final id = text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
  TextColumn get requestId => text().references(Requests, #id)();
  TextColumn get resultType => text()();
  TextColumn get result => text().nullable()();
  TextColumn get errorCode => text().nullable()();
  TextColumn get errorMessage => text().nullable()();
  TextColumn get multiId => text().nullable()();
  TextColumn get createdAt => text().map(const DateTimeConverter())();
  TextColumn get relays => text().map(StringListTypeConverter())();
}
