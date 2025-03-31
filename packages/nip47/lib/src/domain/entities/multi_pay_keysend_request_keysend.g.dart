// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_pay_keysend_request_keysend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MultiPayKeysendRequestKeysend _$MultiPayKeysendRequestKeysendFromJson(
        Map<String, dynamic> json) =>
    _MultiPayKeysendRequestKeysend(
      id: json['id'] as String?,
      pubkey: json['pubkey'] as String,
      amountSat: BigInt.parse(json['amountSat'] as String),
      preimage: json['preimage'] as String?,
      tlvRecords: (json['tlvRecords'] as List<dynamic>?)
          ?.map((e) => TlvRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MultiPayKeysendRequestKeysendToJson(
        _MultiPayKeysendRequestKeysend instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pubkey': instance.pubkey,
      'amountSat': instance.amountSat.toString(),
      'preimage': instance.preimage,
      'tlvRecords': instance.tlvRecords,
    };
