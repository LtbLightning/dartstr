import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/multi_pay_invoice_request_invoice.dart';
import 'package:nip47/src/domain/entities/multi_pay_keysend_request_keysend.dart';
import 'package:nip47/src/domain/entities/tlv_record.dart';
import 'package:nip47/src/domain/entities/transaction.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
sealed class Request with _$Request {
  const factory Request.getInfo({
    required String id,
    required String clientPubkey,
    required int createdAt,
  }) = GetInfoRequest;
  const factory Request.getBalance({
    required String id,
    required String clientPubkey,
    required int createdAt,
  }) = GetBalanceRequest;
  const factory Request.makeInvoice({
    required String id,
    required String clientPubkey,
    required BigInt amountSat,
    String? description,
    String? descriptionHash,
    int? expiry,
    required int createdAt,
  }) = MakeInvoiceRequest;
  const factory Request.payInvoice({
    required String id,
    required String clientPubkey,
    required String invoice,
    required int createdAt,
  }) = PayInvoiceRequest;
  const factory Request.multiPayInvoice({
    required String id,
    required String clientPubkey,
    required List<MultiPayInvoiceRequestInvoice> invoices,
    required int createdAt,
  }) = MultiPayInvoiceRequest;
  const factory Request.payKeysend({
    required String id,
    required String clientPubkey,
    required BigInt amountSat,
    required String pubkey,
    String? preimage,
    List<TlvRecord>? tlvRecords,
    required int createdAt,
  }) = PayKeysendRequest;
  const factory Request.multiPayKeysend({
    required String id,
    required String clientPubkey,
    required List<MultiPayKeysendRequestKeysend> keysends,
    required int createdAt,
  }) = MultiPayKeysendRequest;
  const factory Request.lookupInvoice({
    required String id,
    required String clientPubkey,
    String? paymentHash,
    String? invoice,
    required int createdAt,
  }) = LookupInvoiceRequest;
  const factory Request.listTransaction({
    required String id,
    required String clientPubkey,
    int? from,
    int? until,
    int? limit,
    int? offset,
    @Default(false) bool? unpaid,
    TransactionType? type,
    required int createdAt,
  }) = ListTransactionRequest;
  const factory Request.custom({
    required String id,
    required String clientPubkey,
    required String method,
    required Map<String, dynamic> params,
    required int createdAt,
  }) = CustomRequest;
  const Request._();

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
