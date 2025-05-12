// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'closed_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClosedMessage {
  String get relayUrl;
  String get subscriptionId;
  String get message;

  /// Create a copy of ClosedMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClosedMessageCopyWith<ClosedMessage> get copyWith =>
      _$ClosedMessageCopyWithImpl<ClosedMessage>(
          this as ClosedMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClosedMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, relayUrl, subscriptionId, message);

  @override
  String toString() {
    return 'ClosedMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ClosedMessageCopyWith<$Res> {
  factory $ClosedMessageCopyWith(
          ClosedMessage value, $Res Function(ClosedMessage) _then) =
      _$ClosedMessageCopyWithImpl;
  @useResult
  $Res call({String relayUrl, String subscriptionId, String message});
}

/// @nodoc
class _$ClosedMessageCopyWithImpl<$Res>
    implements $ClosedMessageCopyWith<$Res> {
  _$ClosedMessageCopyWithImpl(this._self, this._then);

  final ClosedMessage _self;
  final $Res Function(ClosedMessage) _then;

  /// Create a copy of ClosedMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClosedMessage extends ClosedMessage {
  const _ClosedMessage(
      {required this.relayUrl,
      required this.subscriptionId,
      required this.message})
      : super._();

  @override
  final String relayUrl;
  @override
  final String subscriptionId;
  @override
  final String message;

  /// Create a copy of ClosedMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClosedMessageCopyWith<_ClosedMessage> get copyWith =>
      __$ClosedMessageCopyWithImpl<_ClosedMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClosedMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, relayUrl, subscriptionId, message);

  @override
  String toString() {
    return 'ClosedMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ClosedMessageCopyWith<$Res>
    implements $ClosedMessageCopyWith<$Res> {
  factory _$ClosedMessageCopyWith(
          _ClosedMessage value, $Res Function(_ClosedMessage) _then) =
      __$ClosedMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String subscriptionId, String message});
}

/// @nodoc
class __$ClosedMessageCopyWithImpl<$Res>
    implements _$ClosedMessageCopyWith<$Res> {
  __$ClosedMessageCopyWithImpl(this._self, this._then);

  final _ClosedMessage _self;
  final $Res Function(_ClosedMessage) _then;

  /// Create a copy of ClosedMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
    Object? message = null,
  }) {
    return _then(_ClosedMessage(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
