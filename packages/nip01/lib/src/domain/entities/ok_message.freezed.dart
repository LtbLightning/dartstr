// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ok_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OkMessage {
  String get relayUrl;
  String get eventId;
  bool get accepted;
  String get message;

  /// Create a copy of OkMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OkMessageCopyWith<OkMessage> get copyWith =>
      _$OkMessageCopyWithImpl<OkMessage>(this as OkMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OkMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, relayUrl, eventId, accepted, message);

  @override
  String toString() {
    return 'OkMessage(relayUrl: $relayUrl, eventId: $eventId, accepted: $accepted, message: $message)';
  }
}

/// @nodoc
abstract mixin class $OkMessageCopyWith<$Res> {
  factory $OkMessageCopyWith(OkMessage value, $Res Function(OkMessage) _then) =
      _$OkMessageCopyWithImpl;
  @useResult
  $Res call({String relayUrl, String eventId, bool accepted, String message});
}

/// @nodoc
class _$OkMessageCopyWithImpl<$Res> implements $OkMessageCopyWith<$Res> {
  _$OkMessageCopyWithImpl(this._self, this._then);

  final OkMessage _self;
  final $Res Function(OkMessage) _then;

  /// Create a copy of OkMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? eventId = null,
    Object? accepted = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: null == accepted
          ? _self.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _OkMessage implements OkMessage {
  const _OkMessage(
      {required this.relayUrl,
      required this.eventId,
      required this.accepted,
      required this.message});

  @override
  final String relayUrl;
  @override
  final String eventId;
  @override
  final bool accepted;
  @override
  final String message;

  /// Create a copy of OkMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OkMessageCopyWith<_OkMessage> get copyWith =>
      __$OkMessageCopyWithImpl<_OkMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OkMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, relayUrl, eventId, accepted, message);

  @override
  String toString() {
    return 'OkMessage(relayUrl: $relayUrl, eventId: $eventId, accepted: $accepted, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$OkMessageCopyWith<$Res>
    implements $OkMessageCopyWith<$Res> {
  factory _$OkMessageCopyWith(
          _OkMessage value, $Res Function(_OkMessage) _then) =
      __$OkMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String eventId, bool accepted, String message});
}

/// @nodoc
class __$OkMessageCopyWithImpl<$Res> implements _$OkMessageCopyWith<$Res> {
  __$OkMessageCopyWithImpl(this._self, this._then);

  final _OkMessage _self;
  final $Res Function(_OkMessage) _then;

  /// Create a copy of OkMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? eventId = null,
    Object? accepted = null,
    Object? message = null,
  }) {
    return _then(_OkMessage(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: null == accepted
          ? _self.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
