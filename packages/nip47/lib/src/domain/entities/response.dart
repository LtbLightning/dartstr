import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/info_result.dart';
import 'package:nip47/src/domain/entities/invoice.dart';
import 'package:nip47/src/domain/entities/pay_result.dart';
import 'package:nip47/src/domain/entities/transaction.dart';
import 'package:nip47/src/enums/error_code.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
sealed class Response with _$Response {
  const factory Response.getInfo({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    InfoResult? info,
    ErrorCode? error,
    required int createdAt,
  }) = GetInfoResponse;
  const factory Response.getBalance({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    BigInt? balanceSat,
    ErrorCode? error,
    required int createdAt,
  }) = GetBalanceResponse;
  const factory Response.makeInvoice({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    Invoice? invoice,
    ErrorCode? error,
    required int createdAt,
  }) = MakeInvoiceResponse;
  const factory Response.payInvoice({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    PayResult? payResult,
    ErrorCode? error,
    required int createdAt,
  }) = PayInvoiceResponse;
  const factory Response.multiPayInvoice({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    required String invoiceId,
    PayResult? payResult,
    ErrorCode? error,
    required int createdAt,
  }) = MultiPayInvoiceResponse;
  const factory Response.payKeysend({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    PayResult? payResult,
    ErrorCode? error,
    required int createdAt,
  }) = PayKeysendResponse;
  const factory Response.multiPayKeysend({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    required String keysendId,
    PayResult? payResult,
    ErrorCode? error,
    required int createdAt,
  }) = MultiPayKeysendResponse;
  const factory Response.lookupInvoice({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    Transaction? transaction,
    ErrorCode? error,
    required int createdAt,
  }) = LookupInvoiceResponse;
  const factory Response.listTransactions({
    required String requestId,
    required String walletServicePubkey,
    required String clientPubkey,
    List<Transaction>? transactions,
    ErrorCode? error,
    required int createdAt,
  }) = ListTransactionsResponse;
  const factory Response.custom({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String resultType,
    Map<String, dynamic>? result,
    ErrorCode? error,
    required int createdAt,
  }) = CustomResponse;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
