// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kind_0_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Kind0Metadata {
  String get name;
  String? get about;
  String? get picture;

  /// Create a copy of Kind0Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Kind0MetadataCopyWith<Kind0Metadata> get copyWith =>
      _$Kind0MetadataCopyWithImpl<Kind0Metadata>(
          this as Kind0Metadata, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Kind0Metadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, about, picture);

  @override
  String toString() {
    return 'Kind0Metadata(name: $name, about: $about, picture: $picture)';
  }
}

/// @nodoc
abstract mixin class $Kind0MetadataCopyWith<$Res> {
  factory $Kind0MetadataCopyWith(
          Kind0Metadata value, $Res Function(Kind0Metadata) _then) =
      _$Kind0MetadataCopyWithImpl;
  @useResult
  $Res call({String name, String? about, String? picture});
}

/// @nodoc
class _$Kind0MetadataCopyWithImpl<$Res>
    implements $Kind0MetadataCopyWith<$Res> {
  _$Kind0MetadataCopyWithImpl(this._self, this._then);

  final Kind0Metadata _self;
  final $Res Function(Kind0Metadata) _then;

  /// Create a copy of Kind0Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? about = freezed,
    Object? picture = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Kind0Metadata extends Kind0Metadata {
  const _Kind0Metadata({required this.name, this.about, this.picture})
      : super._();

  @override
  final String name;
  @override
  final String? about;
  @override
  final String? picture;

  /// Create a copy of Kind0Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Kind0MetadataCopyWith<_Kind0Metadata> get copyWith =>
      __$Kind0MetadataCopyWithImpl<_Kind0Metadata>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Kind0Metadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, about, picture);

  @override
  String toString() {
    return 'Kind0Metadata(name: $name, about: $about, picture: $picture)';
  }
}

/// @nodoc
abstract mixin class _$Kind0MetadataCopyWith<$Res>
    implements $Kind0MetadataCopyWith<$Res> {
  factory _$Kind0MetadataCopyWith(
          _Kind0Metadata value, $Res Function(_Kind0Metadata) _then) =
      __$Kind0MetadataCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String? about, String? picture});
}

/// @nodoc
class __$Kind0MetadataCopyWithImpl<$Res>
    implements _$Kind0MetadataCopyWith<$Res> {
  __$Kind0MetadataCopyWithImpl(this._self, this._then);

  final _Kind0Metadata _self;
  final $Res Function(_Kind0Metadata) _then;

  /// Create a copy of Kind0Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? about = freezed,
    Object? picture = freezed,
  }) {
    return _then(_Kind0Metadata(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _self.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
