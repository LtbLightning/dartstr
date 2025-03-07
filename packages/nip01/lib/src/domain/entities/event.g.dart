// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignedEvent _$SignedEventFromJson(Map<String, dynamic> json) => SignedEvent(
      id: json['id'] as String,
      pubkey: json['pubkey'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      kind: (json['kind'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>).map((e) => e as String).toList())
              .toList() ??
          const [],
      content: json['content'] as String,
      sig: json['sig'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SignedEventToJson(SignedEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pubkey': instance.pubkey,
      'created_at': instance.createdAt,
      'kind': instance.kind,
      'tags': instance.tags,
      'content': instance.content,
      'sig': instance.sig,
      'runtimeType': instance.$type,
    };

UnsignedEvent _$UnsignedEventFromJson(Map<String, dynamic> json) =>
    UnsignedEvent(
      pubkey: json['pubkey'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      kind: (json['kind'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>).map((e) => e as String).toList())
              .toList() ??
          const [],
      content: json['content'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnsignedEventToJson(UnsignedEvent instance) =>
    <String, dynamic>{
      'pubkey': instance.pubkey,
      'created_at': instance.createdAt,
      'kind': instance.kind,
      'tags': instance.tags,
      'content': instance.content,
      'runtimeType': instance.$type,
    };
