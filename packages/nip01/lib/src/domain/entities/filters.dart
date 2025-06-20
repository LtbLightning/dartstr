import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/event.dart';

part 'filters.freezed.dart';

@freezed
sealed class Filters with _$Filters {
  const factory Filters({
    List<String>? ids,
    List<String>? authors,
    List<int>? kinds,
    Map<String, List<String>>? tags,
    int? since,
    int? until,
    int? limit,
  }) = _Filters;
  const Filters._();

  bool matches(Event event) {
    if (ids != null && !ids!.contains(event.id)) {
      return false;
    }
    if (authors != null && !authors!.contains(event.pubkey)) {
      return false;
    }
    if (kinds != null && !kinds!.contains(event.kind)) {
      return false;
    }
    if (tags != null) {
      for (final entry in tags!.entries) {
        final tagKey = entry.key;
        final values = entry.value;

        final matchingTag = event.tags.any(
          (tag) =>
              tag.isNotEmpty &&
              tag[0] == tagKey &&
              tag.length > 1 &&
              tag.sublist(1).any(values.contains),
        );

        if (!matchingTag) return false;
      }
    }
    if (since != null && event.createdAt < since!) {
      return false;
    }
    if (until != null && event.createdAt > until!) {
      return false;
    }
    return true;
  }
}
