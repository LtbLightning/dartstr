import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_pay_invoice_request_invoice.freezed.dart';
part 'multi_pay_invoice_request_invoice.g.dart';

@freezed
sealed class MultiPayInvoiceRequestInvoice
    with _$MultiPayInvoiceRequestInvoice {
  const factory MultiPayInvoiceRequestInvoice({
    String? id,
    required String invoice,
    BigInt? amountSat,
  }) = _MultiPayInvoiceRequestInvoice;
  const MultiPayInvoiceRequestInvoice._();

  factory MultiPayInvoiceRequestInvoice.fromJson(Map<String, dynamic> json) =>
      _$MultiPayInvoiceRequestInvoiceFromJson(json);
}
