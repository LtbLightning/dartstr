// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
      invoice: json['invoice'] as String?,
      description: json['description'] as String?,
      descriptionHash: json['descriptionHash'] as String?,
      preimage: json['preimage'] as String?,
      paymentHash: json['paymentHash'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      feesPaidSat: (json['feesPaidSat'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      expiresAt: (json['expiresAt'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
      'invoice': instance.invoice,
      'description': instance.description,
      'descriptionHash': instance.descriptionHash,
      'preimage': instance.preimage,
      'paymentHash': instance.paymentHash,
      'amountSat': instance.amountSat,
      'feesPaidSat': instance.feesPaidSat,
      'createdAt': instance.createdAt,
      'expiresAt': instance.expiresAt,
      'metadata': instance.metadata,
    };
