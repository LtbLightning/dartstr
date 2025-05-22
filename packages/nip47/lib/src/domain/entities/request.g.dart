// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoRequest _$GetInfoRequestFromJson(Map<String, dynamic> json) =>
    GetInfoRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetInfoRequestToJson(GetInfoRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

GetBalanceRequest _$GetBalanceRequestFromJson(Map<String, dynamic> json) =>
    GetBalanceRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$GetBalanceRequestToJson(GetBalanceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

MakeInvoiceRequest _$MakeInvoiceRequestFromJson(Map<String, dynamic> json) =>
    MakeInvoiceRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      description: json['description'] as String?,
      descriptionHash: json['descriptionHash'] as String?,
      expiry: (json['expiry'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MakeInvoiceRequestToJson(MakeInvoiceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'amountSat': instance.amountSat,
      'description': instance.description,
      'descriptionHash': instance.descriptionHash,
      'expiry': instance.expiry,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

PayInvoiceRequest _$PayInvoiceRequestFromJson(Map<String, dynamic> json) =>
    PayInvoiceRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      invoice: json['invoice'] as String,
      amountSat: (json['amountSat'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PayInvoiceRequestToJson(PayInvoiceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'invoice': instance.invoice,
      'amountSat': instance.amountSat,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

MultiPayInvoiceRequest _$MultiPayInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    MultiPayInvoiceRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      invoices: (json['invoices'] as List<dynamic>)
          .map((e) =>
              MultiPayInvoiceRequestInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiPayInvoiceRequestToJson(
        MultiPayInvoiceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'invoices': instance.invoices,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

PayKeysendRequest _$PayKeysendRequestFromJson(Map<String, dynamic> json) =>
    PayKeysendRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      pubkey: json['pubkey'] as String,
      preimage: json['preimage'] as String?,
      tlvRecords: (json['tlvRecords'] as List<dynamic>?)
          ?.map((e) => TlvRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PayKeysendRequestToJson(PayKeysendRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'amountSat': instance.amountSat,
      'pubkey': instance.pubkey,
      'preimage': instance.preimage,
      'tlvRecords': instance.tlvRecords,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

MultiPayKeysendRequest _$MultiPayKeysendRequestFromJson(
        Map<String, dynamic> json) =>
    MultiPayKeysendRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      keysends: (json['keysends'] as List<dynamic>)
          .map((e) =>
              MultiPayKeysendRequestKeysend.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MultiPayKeysendRequestToJson(
        MultiPayKeysendRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'keysends': instance.keysends,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

LookupInvoiceRequest _$LookupInvoiceRequestFromJson(
        Map<String, dynamic> json) =>
    LookupInvoiceRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      paymentHash: json['paymentHash'] as String?,
      invoice: json['invoice'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LookupInvoiceRequestToJson(
        LookupInvoiceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'paymentHash': instance.paymentHash,
      'invoice': instance.invoice,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

ListTransactionsRequest _$ListTransactionsRequestFromJson(
        Map<String, dynamic> json) =>
    ListTransactionsRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      from: (json['from'] as num?)?.toInt(),
      until: (json['until'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      unpaid: json['unpaid'] as bool? ?? false,
      type: $enumDecodeNullable(_$TransactionTypeEnumMap, json['type']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ListTransactionsRequestToJson(
        ListTransactionsRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'from': instance.from,
      'until': instance.until,
      'limit': instance.limit,
      'offset': instance.offset,
      'unpaid': instance.unpaid,
      'type': _$TransactionTypeEnumMap[instance.type],
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.incoming: 'incoming',
  TransactionType.outgoing: 'outgoing',
};

CustomRequest _$CustomRequestFromJson(Map<String, dynamic> json) =>
    CustomRequest(
      id: json['id'] as String,
      clientPubkey: json['clientPubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      method: json['method'] as String,
      params: json['params'] as Map<String, dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CustomRequestToJson(CustomRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientPubkey': instance.clientPubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'method': instance.method,
      'params': instance.params,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };
