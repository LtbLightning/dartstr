// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Filters _$FiltersFromJson(Map<String, dynamic> json) => _Filters(
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      kinds: (json['kinds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      tags:
          const TagsConverter().fromJson(json['tags'] as Map<String, dynamic>?),
      since: (json['since'] as num?)?.toInt(),
      until: (json['until'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FiltersToJson(_Filters instance) => <String, dynamic>{
      'ids': instance.ids,
      'authors': instance.authors,
      'kinds': instance.kinds,
      'tags': const TagsConverter().toJson(instance.tags),
      'since': instance.since,
      'until': instance.until,
      'limit': instance.limit,
    };
