import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/entities/notification.dart';

abstract class WalletServiceRepository {
  Stream<Request> get requests;
  Future<WalletConnection> createConnection();
  Future<void> connect(ClientConnection connection);
  Future<void> respond({Request request, Response response});
  Future<void> notify({Notification notification});
}
