import 'package:drift/drift.dart';
import 'package:nip47/src/database/tables/wallet_connection_table.dart';
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
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
  TextColumn get relays => text().nullable().map(StringListTypeConverter())();
}
