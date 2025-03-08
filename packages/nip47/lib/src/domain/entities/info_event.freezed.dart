// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoEvent {
  String get relayUrl;
  String get walletServicePubkey;
  List<Method> get methods;
  List<NotificationType>? get notifications;

  /// Create a copy of InfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventCopyWith<InfoEvent> get copyWith =>
      _$InfoEventCopyWithImpl<InfoEvent>(this as InfoEvent, _$identity);

  /// Serializes this InfoEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEvent &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other.methods, methods) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relayUrl,
      walletServicePubkey,
      const DeepCollectionEquality().hash(methods),
      const DeepCollectionEquality().hash(notifications));

  @override
  String toString() {
    return 'InfoEvent(relayUrl: $relayUrl, walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $InfoEventCopyWith<$Res> {
  factory $InfoEventCopyWith(InfoEvent value, $Res Function(InfoEvent) _then) =
      _$InfoEventCopyWithImpl;
  @useResult
  $Res call(
      {String relayUrl,
      String walletServicePubkey,
      List<Method> methods,
      List<NotificationType>? notifications});
}

/// @nodoc
class _$InfoEventCopyWithImpl<$Res> implements $InfoEventCopyWith<$Res> {
  _$InfoEventCopyWithImpl(this._self, this._then);

  final InfoEvent _self;
  final $Res Function(InfoEvent) _then;

  /// Create a copy of InfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? notifications = freezed,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InfoEvent extends InfoEvent {
  const _InfoEvent(
      {required this.relayUrl,
      required this.walletServicePubkey,
      required final List<Method> methods,
      final List<NotificationType>? notifications})
      : _methods = methods,
        _notifications = notifications,
        super._();
  factory _InfoEvent.fromJson(Map<String, dynamic> json) =>
      _$InfoEventFromJson(json);

  @override
  final String relayUrl;
  @override
  final String walletServicePubkey;
  final List<Method> _methods;
  @override
  List<Method> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<NotificationType>? _notifications;
  @override
  List<NotificationType>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of InfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InfoEventCopyWith<_InfoEvent> get copyWith =>
      __$InfoEventCopyWithImpl<_InfoEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InfoEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoEvent &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      relayUrl,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'InfoEvent(relayUrl: $relayUrl, walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class _$InfoEventCopyWith<$Res>
    implements $InfoEventCopyWith<$Res> {
  factory _$InfoEventCopyWith(
          _InfoEvent value, $Res Function(_InfoEvent) _then) =
      __$InfoEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String relayUrl,
      String walletServicePubkey,
      List<Method> methods,
      List<NotificationType>? notifications});
}

/// @nodoc
class __$InfoEventCopyWithImpl<$Res> implements _$InfoEventCopyWith<$Res> {
  __$InfoEventCopyWithImpl(this._self, this._then);

  final _InfoEvent _self;
  final $Res Function(_InfoEvent) _then;

  /// Create a copy of InfoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? notifications = freezed,
  }) {
    return _then(_InfoEvent(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
    ));
  }
}

// dart format on
