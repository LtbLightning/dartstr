// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tlv_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TlvRecord _$TlvRecordFromJson(Map<String, dynamic> json) => _TlvRecord(
      type: (json['type'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$TlvRecordToJson(_TlvRecord instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
