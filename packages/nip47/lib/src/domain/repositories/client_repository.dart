import 'package:nip47/src/domain/entities/entities.dart';

abstract class ClientRepository {
  Stream<InfoEvent> get infoEvents;
  Stream<Response> get responses;
  Stream<Notification> get notifications;
  Future<ClientConnection> createConnection();
  Future<InfoEvent> connect(WalletConnection connection);
  Future<void> request(Request request);
}
