import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';

abstract class ResponseRepository {
  Stream<Response> get responseStream;
  Future<void> subscribeToResponses({
    required String walletServicePubkey,
    required nip01.KeyPair clientKeyPair,
    List<String>? relayUrls,
  });
  Future<void> sendGetInfoResponse({
    required String requestId,
    required String walletServicePrivateKey,
    String? alias,
    String? color,
    String? pubkey,
    String? network,
    int? blockHeight,
    String? blockHash,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool waitForOkMessage = true,
  });
  Future<void> sendGetBalanceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required int balanceSat,
    bool waitForOkMessage = true,
  });
  Future<void> sendMakeInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required String invoice,
    bool waitForOkMessage = true,
  });
  Future<void> sendPayInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required String preimage,
    bool waitForOkMessage = true,
  });
  Future<void> sendLookupInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required TransactionType type,
    required String invoice,
    String? preimage,
    int? feesPaidSat,
    DateTime? settledAt,
    Map<String, dynamic>? metadata,
    bool waitForOkMessage = true,
  });
  Future<List<Response>> getResponses();
  Future<Response?> getResponseByRequestId({required String requestId});
  Future<void> removeResponses({
    required String clientPubkey,
  });
}
