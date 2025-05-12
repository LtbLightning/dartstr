// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventMessage {
  String get relayUrl;
  String get subscriptionId;
  Event get event;

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventMessageCopyWith<EventMessage> get copyWith =>
      _$EventMessageCopyWithImpl<EventMessage>(
          this as EventMessage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, subscriptionId, event);

  @override
  String toString() {
    return 'EventMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId, event: $event)';
  }
}

/// @nodoc
abstract mixin class $EventMessageCopyWith<$Res> {
  factory $EventMessageCopyWith(
          EventMessage value, $Res Function(EventMessage) _then) =
      _$EventMessageCopyWithImpl;
  @useResult
  $Res call({String relayUrl, String subscriptionId, Event event});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventMessageCopyWithImpl<$Res> implements $EventMessageCopyWith<$Res> {
  _$EventMessageCopyWithImpl(this._self, this._then);

  final EventMessage _self;
  final $Res Function(EventMessage) _then;

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
    Object? event = null,
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
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_self.event, (value) {
      return _then(_self.copyWith(event: value));
    });
  }
}

/// @nodoc

class _EventMessage extends EventMessage {
  const _EventMessage(
      {required this.relayUrl,
      required this.subscriptionId,
      required this.event})
      : super._();

  @override
  final String relayUrl;
  @override
  final String subscriptionId;
  @override
  final Event event;

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventMessageCopyWith<_EventMessage> get copyWith =>
      __$EventMessageCopyWithImpl<_EventMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventMessage &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, subscriptionId, event);

  @override
  String toString() {
    return 'EventMessage(relayUrl: $relayUrl, subscriptionId: $subscriptionId, event: $event)';
  }
}

/// @nodoc
abstract mixin class _$EventMessageCopyWith<$Res>
    implements $EventMessageCopyWith<$Res> {
  factory _$EventMessageCopyWith(
          _EventMessage value, $Res Function(_EventMessage) _then) =
      __$EventMessageCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String subscriptionId, Event event});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$EventMessageCopyWithImpl<$Res>
    implements _$EventMessageCopyWith<$Res> {
  __$EventMessageCopyWithImpl(this._self, this._then);

  final _EventMessage _self;
  final $Res Function(_EventMessage) _then;

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? subscriptionId = null,
    Object? event = null,
  }) {
    return _then(_EventMessage(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }

  /// Create a copy of EventMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_self.event, (value) {
      return _then(_self.copyWith(event: value));
    });
  }
}

// dart format on
