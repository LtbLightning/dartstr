import 'package:drift/drift.dart';

@DataClassName('RequestTable')
class Requests extends Table {
  late final id = text()();

  @override
  Set<Column<Object>> get primaryKey => {id};
  TextColumn get clientPubkey => text().customConstraint(
      'NOT NULL REFERENCES client_connections(client_pubkey)')();
  TextColumn get walletServicePubkey => text().customConstraint(
      'NOT NULL REFERENCES client_connections(wallet_service_pubkey)')();
  TextColumn get method => text()();
  TextColumn get params => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
}
