// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      invoice: json['invoice'] as String?,
      description: json['description'] as String?,
      descriptionHash: json['descriptionHash'] as String?,
      preimage: json['preimage'] as String?,
      paymentHash: json['paymentHash'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      feesPaidSat: (json['feesPaidSat'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      settledAt: (json['settledAt'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'invoice': instance.invoice,
      'description': instance.description,
      'descriptionHash': instance.descriptionHash,
      'preimage': instance.preimage,
      'paymentHash': instance.paymentHash,
      'amountSat': instance.amountSat,
      'feesPaidSat': instance.feesPaidSat,
      'createdAt': instance.createdAt,
      'expiresAt': instance.expiresAt,
      'settledAt': instance.settledAt,
      'metadata': instance.metadata,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.incoming: 'incoming',
  TransactionType.outgoing: 'outgoing',
};
