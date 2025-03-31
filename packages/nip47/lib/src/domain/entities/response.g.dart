// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoResponse _$GetInfoResponseFromJson(Map<String, dynamic> json) =>
    GetInfoResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      info: json['info'] == null
          ? null
          : InfoResult.fromJson(json['info'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetInfoResponseToJson(GetInfoResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'info': instance.info,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

const _$ErrorCodeEnumMap = {
  ErrorCode.rateLimited: 'rateLimited',
  ErrorCode.notImplemented: 'notImplemented',
  ErrorCode.insufficientBalance: 'insufficientBalance',
  ErrorCode.paymentFailed: 'paymentFailed',
  ErrorCode.notFound: 'notFound',
  ErrorCode.quotaExceeded: 'quotaExceeded',
  ErrorCode.restricted: 'restricted',
  ErrorCode.unauthorized: 'unauthorized',
  ErrorCode.internal: 'internal',
  ErrorCode.other: 'other',
};

GetBalanceResponse _$GetBalanceResponseFromJson(Map<String, dynamic> json) =>
    GetBalanceResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      balanceSat: json['balanceSat'] == null
          ? null
          : BigInt.parse(json['balanceSat'] as String),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetBalanceResponseToJson(GetBalanceResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'balanceSat': instance.balanceSat?.toString(),
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

MakeInvoiceResponse _$MakeInvoiceResponseFromJson(Map<String, dynamic> json) =>
    MakeInvoiceResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MakeInvoiceResponseToJson(
        MakeInvoiceResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'invoice': instance.invoice,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

PayInvoiceResponse _$PayInvoiceResponseFromJson(Map<String, dynamic> json) =>
    PayInvoiceResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      payResult: json['payResult'] == null
          ? null
          : PayResult.fromJson(json['payResult'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PayInvoiceResponseToJson(PayInvoiceResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'payResult': instance.payResult,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

MultiPayInvoiceResponse _$MultiPayInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    MultiPayInvoiceResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      invoiceId: json['invoiceId'] as String,
      payResult: json['payResult'] == null
          ? null
          : PayResult.fromJson(json['payResult'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiPayInvoiceResponseToJson(
        MultiPayInvoiceResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'invoiceId': instance.invoiceId,
      'payResult': instance.payResult,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

PayKeysendResponse _$PayKeysendResponseFromJson(Map<String, dynamic> json) =>
    PayKeysendResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      payResult: json['payResult'] == null
          ? null
          : PayResult.fromJson(json['payResult'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PayKeysendResponseToJson(PayKeysendResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'payResult': instance.payResult,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

MultiPayKeysendResponse _$MultiPayKeysendResponseFromJson(
        Map<String, dynamic> json) =>
    MultiPayKeysendResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      keysendId: json['keysendId'] as String,
      payResult: json['payResult'] == null
          ? null
          : PayResult.fromJson(json['payResult'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiPayKeysendResponseToJson(
        MultiPayKeysendResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'keysendId': instance.keysendId,
      'payResult': instance.payResult,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

LookupInvoiceResponse _$LookupInvoiceResponseFromJson(
        Map<String, dynamic> json) =>
    LookupInvoiceResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      transaction: json['transaction'] == null
          ? null
          : Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LookupInvoiceResponseToJson(
        LookupInvoiceResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'transaction': instance.transaction,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

ListTransactionsResponse _$ListTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    ListTransactionsResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ListTransactionsResponseToJson(
        ListTransactionsResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'transactions': instance.transactions,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };

CustomResponse _$CustomResponseFromJson(Map<String, dynamic> json) =>
    CustomResponse(
      requestId: json['requestId'] as String,
      clientPubkey: json['clientPubkey'] as String,
      resultType: json['resultType'] as String,
      result: json['result'] as Map<String, dynamic>?,
      error: $enumDecodeNullable(_$ErrorCodeEnumMap, json['error']),
      createdAt: (json['createdAt'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CustomResponseToJson(CustomResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'clientPubkey': instance.clientPubkey,
      'resultType': instance.resultType,
      'result': instance.result,
      'error': _$ErrorCodeEnumMap[instance.error],
      'createdAt': instance.createdAt,
      'runtimeType': instance.$type,
    };
