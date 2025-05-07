class Filters {
  final List<String>? ids;
  final List<String>? authors;
  final List<int>? kinds;
  final Map<String, List<String>>? tags;
  final int? since;
  final int? until;
  final int? limit;

  Filters({
    this.ids,
    this.authors,
    this.kinds,
    this.tags,
    this.since,
    this.until,
    this.limit,
  });

  /// Manual copyWith
  Filters copyWith({
    List<String>? ids,
    List<String>? authors,
    List<int>? kinds,
    Map<String, List<String>>? tags,
    int? since,
    int? until,
    int? limit,
  }) {
    return Filters(
      ids: ids ?? this.ids,
      authors: authors ?? this.authors,
      kinds: kinds ?? this.kinds,
      tags: tags ?? this.tags,
      since: since ?? this.since,
      until: until ?? this.until,
      limit: limit ?? this.limit,
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
  factory Filters.fromJson(Map<String, dynamic> json) {
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

    return Filters(
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
