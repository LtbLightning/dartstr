// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eose_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EoseMessage {
  String get relayUrl;
  String get subscriptionId;

  /// Create a copy of EoseMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EoseMessageCopyWith<EoseMessage> get copyWith =>
      _$EoseMessageCopyWithImpl<EoseMessage>(this as EoseMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EoseMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, subscriptionId);

  @override
  String toString() {
    return 'EoseMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId)';
  }
}

/// @nodoc
abstract mixin class $EoseMessageCopyWith<$Res> {
  factory $EoseMessageCopyWith(
          EoseMessage value, $Res Function(EoseMessage) _then) =
      _$EoseMessageCopyWithImpl;
  @useResult
  $Res call({String relayUrl, String subscriptionId});
}

/// @nodoc
class _$EoseMessageCopyWithImpl<$Res> implements $EoseMessageCopyWith<$Res> {
  _$EoseMessageCopyWithImpl(this._self, this._then);

  final EoseMessage _self;
  final $Res Function(EoseMessage) _then;

  /// Create a copy of EoseMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
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
    ));
  }
}

/// @nodoc

class _EoseMessage implements EoseMessage {
  const _EoseMessage({required this.relayUrl, required this.subscriptionId});

  @override
  final String relayUrl;
  @override
  final String subscriptionId;

  /// Create a copy of EoseMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EoseMessageCopyWith<_EoseMessage> get copyWith =>
      __$EoseMessageCopyWithImpl<_EoseMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EoseMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, subscriptionId);

  @override
  String toString() {
    return 'EoseMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId)';
  }
}

/// @nodoc
abstract mixin class _$EoseMessageCopyWith<$Res>
    implements $EoseMessageCopyWith<$Res> {
  factory _$EoseMessageCopyWith(
          _EoseMessage value, $Res Function(_EoseMessage) _then) =
      __$EoseMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String subscriptionId});
}

/// @nodoc
class __$EoseMessageCopyWithImpl<$Res> implements _$EoseMessageCopyWith<$Res> {
  __$EoseMessageCopyWithImpl(this._self, this._then);

  final _EoseMessage _self;
  final $Res Function(_EoseMessage) _then;

  /// Create a copy of EoseMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
  }) {
    return _then(_EoseMessage(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
