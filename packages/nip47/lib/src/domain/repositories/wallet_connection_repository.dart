import 'package:nip47/nip47.dart';

abstract class WalletConnectionRepository {
  Future<WalletConnectConnectionUri> createConnection({
    required String walletServicePubkey,
    required List<String> relays,
    required BudgetRenewal budgetRenewal,
    String? name,
    int? maxAmountSat,
    int? expiresAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool? isolated,
    List<String>? categories,
    String? lud16,
  });
  Future<WalletConnection> createClientCreatedConnection({
    required String clientPubkey,
    required String walletServicePubkey,
    required List<String> relays,
    required BudgetRenewal budgetRenewal,
    String? name,
    int? maxAmountSat,
    int? expiresAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool? isolated,
    List<String>? categories,
    String? lud16,
  });
  Future<WalletConnection?> getConnectionByClientPubkey(String clientPubkey);
  Future<List<WalletConnection>> getConnections();
  Future<void> updateConnection(WalletConnection connection);
  Future<void> removeConnection(String clientPubkey);
}
