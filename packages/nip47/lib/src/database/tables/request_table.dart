import 'package:drift/drift.dart';
import 'package:nip47/src/database/tables/wallet_connection_table.dart';
import 'package:nip47/src/database/type_converters/date_time_converter.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

@DataClassName('RequestTable')
class Requests extends Table {
  late final id = text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
  TextColumn get clientPubkey =>
      text().references(WalletConnections, #clientPubkey)();
  TextColumn get walletServicePubkey => text()();
  TextColumn get method => text()();
  TextColumn get params => text()();
  TextColumn get createdAt => text().map(const DateTimeConverter())();
  TextColumn get expiresAt =>
      text().map(const DateTimeConverter()).nullable()();
  TextColumn get relays => text().map(StringListTypeConverter())();
}
