// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayResult _$PayResultFromJson(Map<String, dynamic> json) => _PayResult(
      preimage: json['preimage'] as String,
      feesPaidSat: json['feesPaidSat'] == null
          ? null
          : BigInt.parse(json['feesPaidSat'] as String),
    );

Map<String, dynamic> _$PayResultToJson(_PayResult instance) =>
    <String, dynamic>{
      'preimage': instance.preimage,
      'feesPaidSat': instance.feesPaidSat?.toString(),
    };
