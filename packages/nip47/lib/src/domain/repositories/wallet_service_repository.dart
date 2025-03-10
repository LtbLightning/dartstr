import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/domain/entities/entities.dart';

abstract class WalletServiceRepository {
  Stream<Request> get requests;
  Future<WalletConnection> createConnection({
    required nip01.KeyPair walletServiceKeyPair,
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
  });
  Future<void> connect(WalletConnection connection);
  Future<void> respond(Response response);
  Future<void> notify(Notification notification);
}
