import 'package:nip01/nip01.dart';

class FiltersModel {
  final List<String>? ids;
  final List<String>? authors;
  final List<int>? kinds;
  final Map<String, List<String>>? tags;
  final int? since;
  final int? until;
  final int? limit;

  FiltersModel({
    this.ids,
    this.authors,
    this.kinds,
    this.tags,
    this.since,
    this.until,
    this.limit,
  });

  factory FiltersModel.fromEntity(Filters filters) {
    return FiltersModel(
      ids: filters.ids,
      authors: filters.authors,
      kinds: filters.kinds,
      tags: filters.tags,
      since: filters.since,
      until: filters.until,
      limit: filters.limit,
    );
  }

  /// Converts to Nostr-compliant JSON
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      if (ids != null) 'ids': ids,
      if (authors != null) 'authors': authors,
      if (kinds != null) 'kinds': kinds,
      if (since != null) 'since': since,
      if (until != null) 'until': until,
      if (limit != null) 'limit': limit,
    };

    if (tags != null) {
      for (final entry in tags!.entries) {
        map['#${entry.key}'] = entry.value;
      }
    }

    return map;
  }

  /// Converts from Nostr-style JSON to Filters
  factory FiltersModel.fromJson(Map<String, dynamic> json) {
    final tagEntries = <String, List<String>>{};
    final regularFields = <String, dynamic>{};

    for (final entry in json.entries) {
      final key = entry.key;
      final value = entry.value;

      if (key.startsWith('#') && value is List) {
        tagEntries[key.substring(1)] = List<String>.from(value);
      } else {
        regularFields[key] = value;
      }
    }

    return FiltersModel(
      ids: (regularFields['ids'] as List?)?.cast<String>(),
      authors: (regularFields['authors'] as List?)?.cast<String>(),
      kinds: (regularFields['kinds'] as List?)?.cast<int>(),
      since: regularFields['since'] as int?,
      until: regularFields['until'] as int?,
      limit: regularFields['limit'] as int?,
      tags: tagEntries.isEmpty ? null : tagEntries,
    );
  }
}
