// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Filters {
  List<String>? get ids;
  List<String>? get authors;
  List<int>? get kinds;
  @TagsConverter()
  Map<String, List<String>>? get tags;
  int? get since;
  int? get until;
  int? get limit;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FiltersCopyWith<Filters> get copyWith =>
      _$FiltersCopyWithImpl<Filters>(this as Filters, _$identity);

  /// Serializes this Filters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Filters &&
            const DeepCollectionEquality().equals(other.ids, ids) &&
            const DeepCollectionEquality().equals(other.authors, authors) &&
            const DeepCollectionEquality().equals(other.kinds, kinds) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.since, since) || other.since == since) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ids),
      const DeepCollectionEquality().hash(authors),
      const DeepCollectionEquality().hash(kinds),
      const DeepCollectionEquality().hash(tags),
      since,
      until,
      limit);

  @override
  String toString() {
    return 'Filters(ids: $ids, authors: $authors, kinds: $kinds, tags: $tags, since: $since, until: $until, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $FiltersCopyWith<$Res> {
  factory $FiltersCopyWith(Filters value, $Res Function(Filters) _then) =
      _$FiltersCopyWithImpl;
  @useResult
  $Res call(
      {List<String>? ids,
      List<String>? authors,
      List<int>? kinds,
      @TagsConverter() Map<String, List<String>>? tags,
      int? since,
      int? until,
      int? limit});
}

/// @nodoc
class _$FiltersCopyWithImpl<$Res> implements $FiltersCopyWith<$Res> {
  _$FiltersCopyWithImpl(this._self, this._then);

  final Filters _self;
  final $Res Function(Filters) _then;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? authors = freezed,
    Object? kinds = freezed,
    Object? tags = freezed,
    Object? since = freezed,
    Object? until = freezed,
    Object? limit = freezed,
  }) {
    return _then(_self.copyWith(
      ids: freezed == ids
          ? _self.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authors: freezed == authors
          ? _self.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      kinds: freezed == kinds
          ? _self.kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      since: freezed == since
          ? _self.since
          : since // ignore: cast_nullable_to_non_nullable
              as int?,
      until: freezed == until
          ? _self.until
          : until // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Filters extends Filters {
  const _Filters(
      {final List<String>? ids,
      final List<String>? authors,
      final List<int>? kinds,
      @TagsConverter() final Map<String, List<String>>? tags,
      this.since,
      this.until,
      this.limit})
      : _ids = ids,
        _authors = authors,
        _kinds = kinds,
        _tags = tags,
        super._();
  factory _Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);

  final List<String>? _ids;
  @override
  List<String>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _authors;
  @override
  List<String>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _kinds;
  @override
  List<int>? get kinds {
    final value = _kinds;
    if (value == null) return null;
    if (_kinds is EqualUnmodifiableListView) return _kinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<String>>? _tags;
  @override
  @TagsConverter()
  Map<String, List<String>>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableMapView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? since;
  @override
  final int? until;
  @override
  final int? limit;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FiltersCopyWith<_Filters> get copyWith =>
      __$FiltersCopyWithImpl<_Filters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FiltersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filters &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality().equals(other._kinds, _kinds) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.since, since) || other.since == since) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ids),
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_kinds),
      const DeepCollectionEquality().hash(_tags),
      since,
      until,
      limit);

  @override
  String toString() {
    return 'Filters(ids: $ids, authors: $authors, kinds: $kinds, tags: $tags, since: $since, until: $until, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$FiltersCopyWith<$Res> implements $FiltersCopyWith<$Res> {
  factory _$FiltersCopyWith(_Filters value, $Res Function(_Filters) _then) =
      __$FiltersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String>? ids,
      List<String>? authors,
      List<int>? kinds,
      @TagsConverter() Map<String, List<String>>? tags,
      int? since,
      int? until,
      int? limit});
}

/// @nodoc
class __$FiltersCopyWithImpl<$Res> implements _$FiltersCopyWith<$Res> {
  __$FiltersCopyWithImpl(this._self, this._then);

  final _Filters _self;
  final $Res Function(_Filters) _then;

  /// Create a copy of Filters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ids = freezed,
    Object? authors = freezed,
    Object? kinds = freezed,
    Object? tags = freezed,
    Object? since = freezed,
    Object? until = freezed,
    Object? limit = freezed,
  }) {
    return _then(_Filters(
      ids: freezed == ids
          ? _self._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authors: freezed == authors
          ? _self._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      kinds: freezed == kinds
          ? _self._kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      since: freezed == since
          ? _self.since
          : since // ignore: cast_nullable_to_non_nullable
              as int?,
      until: freezed == until
          ? _self.until
          : until // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
