// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_pay_invoice_request_invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultiPayInvoiceRequestInvoice _$MultiPayInvoiceRequestInvoiceFromJson(
        Map<String, dynamic> json) =>
    _MultiPayInvoiceRequestInvoice(
      id: json['id'] as String?,
      invoice: json['invoice'] as String,
      amountSat: json['amountSat'] == null
          ? null
          : BigInt.parse(json['amountSat'] as String),
    );

Map<String, dynamic> _$MultiPayInvoiceRequestInvoiceToJson(
        _MultiPayInvoiceRequestInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice': instance.invoice,
      'amountSat': instance.amountSat?.toString(),
    };
