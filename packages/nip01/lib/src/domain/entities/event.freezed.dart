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
Event _$EventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'signed':
      return SignedEvent.fromJson(json);
    case 'unsigned':
      return UnsignedEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Event',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Event {
  String get pubkey;
  int get createdAt;
  int get kind;
  List<List<String>> get tags;
  String get content;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventCopyWith<Event> get copyWith =>
      _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Event &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pubkey, createdAt, kind,
      const DeepCollectionEquality().hash(tags), content);

  @override
  String toString() {
    return 'Event(pubkey: $pubkey, createdAt: $createdAt, kind: $kind, tags: $tags, content: $content)';
  }
}

/// @nodoc
abstract mixin class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) =
      _$EventCopyWithImpl;
  @useResult
  $Res call(
      {String pubkey,
      int createdAt,
      int kind,
      List<List<String>> tags,
      String content});
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
    Object? pubkey = null,
    Object? createdAt = null,
    Object? kind = null,
    Object? tags = null,
    Object? content = null,
  }) {
    return _then(_self.copyWith(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class SignedEvent extends Event {
  const SignedEvent(
      {required this.id,
      required this.pubkey,
      required this.createdAt,
      required this.kind,
      final List<List<String>> tags = const [],
      required this.content,
      required this.sig,
      final String? $type})
      : _tags = tags,
        $type = $type ?? 'signed',
        super._();
  factory SignedEvent.fromJson(Map<String, dynamic> json) =>
      _$SignedEventFromJson(json);

  final String id;
  @override
  final String pubkey;
  @override
  final int createdAt;
  @override
  final int kind;
  final List<List<String>> _tags;
  @override
  @JsonKey()
  List<List<String>> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String content;
  final String sig;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignedEventCopyWith<SignedEvent> get copyWith =>
      _$SignedEventCopyWithImpl<SignedEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignedEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignedEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.sig, sig) || other.sig == sig));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, pubkey, createdAt, kind,
      const DeepCollectionEquality().hash(_tags), content, sig);

  @override
  String toString() {
    return 'Event.signed(id: $id, pubkey: $pubkey, createdAt: $createdAt, kind: $kind, tags: $tags, content: $content, sig: $sig)';
  }
}

/// @nodoc
abstract mixin class $SignedEventCopyWith<$Res>
    implements $EventCopyWith<$Res> {
  factory $SignedEventCopyWith(
          SignedEvent value, $Res Function(SignedEvent) _then) =
      _$SignedEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String pubkey,
      int createdAt,
      int kind,
      List<List<String>> tags,
      String content,
      String sig});
}

/// @nodoc
class _$SignedEventCopyWithImpl<$Res> implements $SignedEventCopyWith<$Res> {
  _$SignedEventCopyWithImpl(this._self, this._then);

  final SignedEvent _self;
  final $Res Function(SignedEvent) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? pubkey = null,
    Object? createdAt = null,
    Object? kind = null,
    Object? tags = null,
    Object? content = null,
    Object? sig = null,
  }) {
    return _then(SignedEvent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      sig: null == sig
          ? _self.sig
          : sig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class UnsignedEvent extends Event {
  const UnsignedEvent(
      {required this.pubkey,
      required this.createdAt,
      required this.kind,
      final List<List<String>> tags = const [],
      required this.content,
      final String? $type})
      : _tags = tags,
        $type = $type ?? 'unsigned',
        super._();
  factory UnsignedEvent.fromJson(Map<String, dynamic> json) =>
      _$UnsignedEventFromJson(json);

  @override
  final String pubkey;
  @override
  final int createdAt;
  @override
  final int kind;
  final List<List<String>> _tags;
  @override
  @JsonKey()
  List<List<String>> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnsignedEventCopyWith<UnsignedEvent> get copyWith =>
      _$UnsignedEventCopyWithImpl<UnsignedEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnsignedEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnsignedEvent &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pubkey, createdAt, kind,
      const DeepCollectionEquality().hash(_tags), content);

  @override
  String toString() {
    return 'Event.unsigned(pubkey: $pubkey, createdAt: $createdAt, kind: $kind, tags: $tags, content: $content)';
  }
}

/// @nodoc
abstract mixin class $UnsignedEventCopyWith<$Res>
    implements $EventCopyWith<$Res> {
  factory $UnsignedEventCopyWith(
          UnsignedEvent value, $Res Function(UnsignedEvent) _then) =
      _$UnsignedEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String pubkey,
      int createdAt,
      int kind,
      List<List<String>> tags,
      String content});
}

/// @nodoc
class _$UnsignedEventCopyWithImpl<$Res>
    implements $UnsignedEventCopyWith<$Res> {
  _$UnsignedEventCopyWithImpl(this._self, this._then);

  final UnsignedEvent _self;
  final $Res Function(UnsignedEvent) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pubkey = null,
    Object? createdAt = null,
    Object? kind = null,
    Object? tags = null,
    Object? content = null,
  }) {
    return _then(UnsignedEvent(
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
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
