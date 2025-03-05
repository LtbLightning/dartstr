// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Event {
  String? get _id;
  String get pubkey;
  int get createdAt;
  int get kind;
  List<List<String>> get tags;
  String get content;
  String? get sig;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventCopyWith<Event> get copyWith =>
      _$EventCopyWithImpl<Event>(this as Event, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Event &&
            (identical(other._id, _id) || other._id == _id) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sig, sig) || other.sig == sig));
  }

  @override
  int get hashCode => Object.hash(runtimeType, _id, pubkey, createdAt, kind,
      const DeepCollectionEquality().hash(tags), content, sig);

  @override
  String toString() {
    return 'Event(_id: $_id, pubkey: $pubkey, createdAt: $createdAt, kind: $kind, tags: $tags, content: $content, sig: $sig)';
  }
}

/// @nodoc
abstract mixin class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) =
      _$EventCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String pubkey,
      int createdAt,
      int kind,
      List<List<String>> tags,
      String content,
      String? sig});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pubkey = null,
    Object? createdAt = null,
    Object? kind = null,
    Object? tags = null,
    Object? content = null,
    Object? sig = freezed,
  }) {
    return _then(Event(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sig: freezed == sig
          ? _self.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
