import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/entities/connection_uri.dart';

abstract class WalletConnectionRepository {
  Future<List<WalletConnection>> getConnections();
  Future<WalletConnectConnectionUri> createConnection({
    required walletServicePrivateKey,
    required String walletServicePubkey,
    required List<String> relays,
    required String budgetRenewal,
    String? name,
    List<String>? clientRelays,
    int? budgetRenewedAt,
    int? maxAmountSat,
    int? remainingAmountSat,
    int? expiresAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool? isolated,
    bool? isFrozen,
    List<String>? categories,
    String? lud16,
  });
  Future<WalletConnection> connect(WalletAuthConnectionUri uri);
  Future<void> disconnect(String clientPubkey);
  Future<void> removeConnection(String clientPubkey);
}
