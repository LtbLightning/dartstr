import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'generated/request.freezed.dart';

@freezed
sealed class Request with _$Request {
  const factory Request.getInfo({
    required String clientPubkey,
    required String walletServicePubkey,
    DateTime? expiresAt,
  }) = GetInfoRequest;
  const factory Request.getBalance({
    required String clientPubkey,
    required String walletServicePubkey,
    DateTime? expiresAt,
  }) = GetBalanceRequest;
  const factory Request.makeInvoice({
    required String clientPubkey,
    required String walletServicePubkey,
    required int amountSat,
    String? description,
    String? descriptionHash,
    int? expiry,
    DateTime? expiresAt,
  }) = MakeInvoiceRequest;
  const factory Request.payInvoice({
    required String clientPubkey,
    required String walletServicePubkey,
    required String invoice,
    int? amountSat,
    DateTime? expiresAt,
  }) = PayInvoiceRequest;
  const factory Request.lookupInvoice({
    required String clientPubkey,
    required String walletServicePubkey,
    String? paymentHash,
    String? invoice,
    DateTime? expiresAt,
  }) = LookupInvoiceRequest;
  const factory Request.listTransactions({
    required String clientPubkey,
    required String walletServicePubkey,
    int? from,
    int? until,
    int? limit,
    int? offset,
    @Default(false) bool? unpaid,
    TransactionType? type,
    DateTime? expiresAt,
  }) = ListTransactionsRequest;
  const factory Request.custom({
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required Map<String, dynamic> params,
    DateTime? expiresAt,
  }) = CustomRequest;
  const Request._();

  String get method {
    switch (this) {
      case GetInfoRequest _:
        return Method.getInfo.plaintext;
      case GetBalanceRequest _:
        return Method.getBalance.plaintext;
      case MakeInvoiceRequest _:
        return Method.makeInvoice.plaintext;
      case PayInvoiceRequest _:
        return Method.payInvoice.plaintext;
      case LookupInvoiceRequest _:
        return Method.lookupInvoice.plaintext;
      case ListTransactionsRequest _:
        return Method.listTransactions.plaintext;
      case CustomRequest customRequest:
        return customRequest.method;
    }
  }
}
