import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/entities/connection_uri.dart';

abstract class WalletConnectionRepository {
  Future<List<WalletConnection>> getConnections();
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
  Future<void> resumeConnections({
    required List<nip01.KeyPair> walletServiceKeyPairs,
  });
  Future<void> disconnect(String clientPubkey);
  Future<void> removeConnection(String clientPubkey);
}
