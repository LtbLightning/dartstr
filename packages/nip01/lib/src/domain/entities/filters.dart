import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';
part 'filters.g.dart';

@freezed
sealed class Filters with _$Filters {
  const factory Filters({
    List<String>? ids,
    List<String>? authors,
    List<int>? kinds,
    @TagsConverter() Map<String, List<String>>? tags,
    int? since,
    int? until,
    int? limit,
  }) = _Filters;
  const Filters._();

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);
}

/// Custom converter to handle `tags` transformation
class TagsConverter
    implements
        JsonConverter<Map<String, List<String>>?, Map<String, dynamic>?> {
  const TagsConverter();

  @override
  Map<String, dynamic>? toJson(Map<String, List<String>>? tags) {
    if (tags == null) return null;
    return {for (var entry in tags.entries) '#${entry.key}': entry.value};
  }

  @override
  Map<String, List<String>>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return {
      for (var entry in json.entries)
        if (entry.key.startsWith('#'))
          entry.key.substring(1): List<String>.from(entry.value as List)
    };
  }
}
