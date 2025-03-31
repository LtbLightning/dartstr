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
  String get walletServicePubkey;
  List<Method>? get methods;
  List<NotificationType>?
      get notifications; // For client-created connections in which the info event should be tagged with the client's pubkey
  String? get clientPubkey;
  Uri? get walletRelay;
  List<String>? get customMethods;
  List<String>? get customNotifications;

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
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other.methods, methods) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay) &&
            const DeepCollectionEquality()
                .equals(other.customMethods, customMethods) &&
            const DeepCollectionEquality()
                .equals(other.customNotifications, customNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServicePubkey,
      const DeepCollectionEquality().hash(methods),
      const DeepCollectionEquality().hash(notifications),
      clientPubkey,
      walletRelay,
      const DeepCollectionEquality().hash(customMethods),
      const DeepCollectionEquality().hash(customNotifications));

  @override
  String toString() {
    return 'InfoEvent(walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay, customMethods: $customMethods, customNotifications: $customNotifications)';
  }
}

/// @nodoc
abstract mixin class $InfoEventCopyWith<$Res> {
  factory $InfoEventCopyWith(InfoEvent value, $Res Function(InfoEvent) _then) =
      _$InfoEventCopyWithImpl;
  @useResult
  $Res call(
      {String walletServicePubkey,
      List<Method>? methods,
      List<NotificationType>? notifications,
      String? clientPubkey,
      Uri? walletRelay,
      List<String>? customMethods,
      List<String>? customNotifications});
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
    Object? walletServicePubkey = null,
    Object? methods = freezed,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
    Object? customMethods = freezed,
    Object? customNotifications = freezed,
  }) {
    return _then(_self.copyWith(
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: freezed == methods
          ? _self.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>?,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as Uri?,
      customMethods: freezed == customMethods
          ? _self.customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotifications: freezed == customNotifications
          ? _self.customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InfoEvent extends InfoEvent {
  const _InfoEvent(
      {required this.walletServicePubkey,
      final List<Method>? methods,
      final List<NotificationType>? notifications,
      this.clientPubkey,
      this.walletRelay,
      final List<String>? customMethods,
      final List<String>? customNotifications})
      : _methods = methods,
        _notifications = notifications,
        _customMethods = customMethods,
        _customNotifications = customNotifications,
        super._();
  factory _InfoEvent.fromJson(Map<String, dynamic> json) =>
      _$InfoEventFromJson(json);

  @override
  final String walletServicePubkey;
  final List<Method>? _methods;
  @override
  List<Method>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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

// For client-created connections in which the info event should be tagged with the client's pubkey
  @override
  final String? clientPubkey;
  @override
  final Uri? walletRelay;
  final List<String>? _customMethods;
  @override
  List<String>? get customMethods {
    final value = _customMethods;
    if (value == null) return null;
    if (_customMethods is EqualUnmodifiableListView) return _customMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _customNotifications;
  @override
  List<String>? get customNotifications {
    final value = _customNotifications;
    if (value == null) return null;
    if (_customNotifications is EqualUnmodifiableListView)
      return _customNotifications;
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
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay) &&
            const DeepCollectionEquality()
                .equals(other._customMethods, _customMethods) &&
            const DeepCollectionEquality()
                .equals(other._customNotifications, _customNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      clientPubkey,
      walletRelay,
      const DeepCollectionEquality().hash(_customMethods),
      const DeepCollectionEquality().hash(_customNotifications));

  @override
  String toString() {
    return 'InfoEvent(walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay, customMethods: $customMethods, customNotifications: $customNotifications)';
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
      {String walletServicePubkey,
      List<Method>? methods,
      List<NotificationType>? notifications,
      String? clientPubkey,
      Uri? walletRelay,
      List<String>? customMethods,
      List<String>? customNotifications});
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
    Object? walletServicePubkey = null,
    Object? methods = freezed,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
    Object? customMethods = freezed,
    Object? customNotifications = freezed,
  }) {
    return _then(_InfoEvent(
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: freezed == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>?,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as Uri?,
      customMethods: freezed == customMethods
          ? _self._customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotifications: freezed == customNotifications
          ? _self._customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
