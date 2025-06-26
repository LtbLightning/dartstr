import 'package:drift/drift.dart';
import 'package:nip47/src/database/type_converters/date_time_converter.dart';
import 'package:nip47/src/database/type_converters/string_list_type_converter.dart';

@DataClassName('WalletConnectionTable')
class WalletConnections extends Table {
  late final clientPubkey = text()();

  @override
  Set<Column<Object>> get primaryKey => {clientPubkey};
  TextColumn get name => text().nullable()();
  TextColumn get walletServicePubkey => text()();
  TextColumn get relays => text().map(const StringListTypeConverter())();
  TextColumn get clientRelays =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get budgetRenewal => text()();
  TextColumn get budgetRenewedAt =>
      text().map(const DateTimeConverter()).nullable()();
  IntColumn get maxAmountSat => integer().nullable()();
  IntColumn get remainingAmountSat => integer().nullable()();
  TextColumn get expiresAt =>
      text().map(const DateTimeConverter()).nullable()();
  TextColumn get methods => text().nullable().map(StringListTypeConverter())();
  TextColumn get customMethods =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get notifications =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get customNotifications =>
      text().nullable().map(const StringListTypeConverter())();
  BoolColumn get isolated => boolean().nullable()();
  BoolColumn get isFrozen => boolean().nullable()();
  TextColumn get categories =>
      text().nullable().map(const StringListTypeConverter())();
  TextColumn get createdAt => text().map(const DateTimeConverter())();
  TextColumn get lud16 => text().nullable()();
}
