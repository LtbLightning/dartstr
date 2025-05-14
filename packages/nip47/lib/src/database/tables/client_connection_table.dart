import 'package:drift/drift.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

@DataClassName('ClientConnectionTable')
class ClientConnections extends Table {
  late final clientPubkey = text()();

  @override
  Set<Column<Object>> get primaryKey => {clientPubkey};
  TextColumn get name => text()();
  IntColumn get walletServiceAccountIndex => integer()();
  TextColumn get walletServicePubkey => text()();
  TextColumn get relays => text().map(const StringListTypeConverter())();
  TextColumn get clientRelays =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get budgetRenewal => text()();
  IntColumn get budgetRenewedAt => integer()();
  IntColumn get maxAmountSat => integer().nullable()();
  IntColumn get remainingAmountSat => integer().nullable()();
  IntColumn get expiresAt => integer().nullable()();
  TextColumn get methods => text().nullable().map(StringListTypeConverter())();
  TextColumn get customMethods =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get notifications =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get customNotifications =>
      text().nullable().map(const StringListTypeConverter())();
  BoolColumn get isolated => boolean()();
  BoolColumn get isFrozen => boolean()();
  TextColumn get categories =>
      text().nullable().map(const StringListTypeConverter())();
  DateTimeColumn get createdAt => dateTime()();
}
