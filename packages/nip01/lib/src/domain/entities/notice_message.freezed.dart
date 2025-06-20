// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoticeMessage {
  String get relayUrl;
  String get message;

  /// Create a copy of NoticeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoticeMessageCopyWith<NoticeMessage> get copyWith =>
      _$NoticeMessageCopyWithImpl<NoticeMessage>(
          this as NoticeMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoticeMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, message);

  @override
  String toString() {
    return 'NoticeMessage(relayUrl: $relayUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class $NoticeMessageCopyWith<$Res> {
  factory $NoticeMessageCopyWith(
          NoticeMessage value, $Res Function(NoticeMessage) _then) =
      _$NoticeMessageCopyWithImpl;
  @useResult
  $Res call({String relayUrl, String message});
}

/// @nodoc
class _$NoticeMessageCopyWithImpl<$Res>
    implements $NoticeMessageCopyWith<$Res> {
  _$NoticeMessageCopyWithImpl(this._self, this._then);

  final NoticeMessage _self;
  final $Res Function(NoticeMessage) _then;

  /// Create a copy of NoticeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _NoticeMessage implements NoticeMessage {
  const _NoticeMessage({required this.relayUrl, required this.message});

  @override
  final String relayUrl;
  @override
  final String message;

  /// Create a copy of NoticeMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoticeMessageCopyWith<_NoticeMessage> get copyWith =>
      __$NoticeMessageCopyWithImpl<_NoticeMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, message);

  @override
  String toString() {
    return 'NoticeMessage(relayUrl: $relayUrl, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NoticeMessageCopyWith<$Res>
    implements $NoticeMessageCopyWith<$Res> {
  factory _$NoticeMessageCopyWith(
          _NoticeMessage value, $Res Function(_NoticeMessage) _then) =
      __$NoticeMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String message});
}

/// @nodoc
class __$NoticeMessageCopyWithImpl<$Res>
    implements _$NoticeMessageCopyWith<$Res> {
  __$NoticeMessageCopyWithImpl(this._self, this._then);

  final _NoticeMessage _self;
  final $Res Function(_NoticeMessage) _then;

  /// Create a copy of NoticeMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? message = null,
  }) {
    return _then(_NoticeMessage(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
