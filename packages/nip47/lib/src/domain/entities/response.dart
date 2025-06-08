import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'generated/response.freezed.dart';

enum Network {
  mainnet(plaintext: 'mainnet'),
  testnet(plaintext: 'testnet'),
  signet(plaintext: 'signet'),
  regtest(plaintext: 'regtest');

  final String plaintext;

  const Network({required this.plaintext});

  factory Network.fromPlainText(String value) {
    return Network.values.firstWhere(
      (network) => network.plaintext == value,
      orElse: () => Network.mainnet,
    );
  }
}

@freezed
sealed class Response with _$Response {
  const factory Response.getInfo({
    required String requestId,
    required String clientPubkey,
    @Default('') String alias,
    @Default('') String color,
    @Default('') String pubkey,
    Network? network,
    int? blockHeight,
    @Default('') String blockHash,
    @Default([]) List<Method> methods,
    @Default([]) List<String> customMethods,
    @Default([]) List<NotificationType> notifications,
    @Default([]) List<String> customNotifications,
  }) = GetInfoResponse;
  const factory Response.getBalance({
    required String requestId,
    required String clientPubkey,
    required int balanceSat,
  }) = GetBalanceResponse;
  const factory Response.makeInvoice({
    required String requestId,
    required String clientPubkey,
    required String invoice,
    String? description,
    String? descriptionHash,
    required String paymentHash,
    required int amountSat,
    required DateTime createdAt,
    DateTime? expiresAt,
    Map<String, dynamic>? metadata,
  }) = MakeInvoiceResponse;
  const factory Response.payInvoice({
    required String requestId,
    required String clientPubkey,
    required String preimage,
    int? feesPaidSat,
  }) = PayInvoiceResponse;
  const factory Response.lookupInvoice({
    required String requestId,
    required String clientPubkey,
    required String type,
    String? invoice,
    String? description,
    String? descriptionHash,
    required String paymentHash,
    required int amountSat,
    int? feesPaidSat,
    required DateTime createdAt,
    DateTime? expiresAt,
    DateTime? settledAt,
    Map<String, dynamic>? metadata,
  }) = LookupInvoiceResponse;
  const factory Response.listTransactions({
    required String requestId,
    required String clientPubkey,
    @Default([]) List<Transaction> transactions,
  }) = ListTransactionsResponse;
  const factory Response.custom({
    required String requestId,
    required String clientPubkey,
    required String method,
    required Map<String, dynamic> params,
  }) = CustomResponse;
  const factory Response.error({
    required String requestId,
    required String clientPubkey,
    required String method,
    required ErrorCode errorCode,
    String? errorMessage,
  }) = ErrorResponse;

  const Response._();
}
