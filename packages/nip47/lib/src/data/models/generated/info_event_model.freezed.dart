// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../info_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoEventModel {
  String get walletServicePubkey;
  List<String> get methods;
  List<String>? get notifications;
  String? get clientPubkey;
  String? get walletRelay;

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventModelCopyWith<InfoEventModel> get copyWith =>
      _$InfoEventModelCopyWithImpl<InfoEventModel>(
          this as InfoEventModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEventModel &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other.methods, methods) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServicePubkey,
      const DeepCollectionEquality().hash(methods),
      const DeepCollectionEquality().hash(notifications),
      clientPubkey,
      walletRelay);

  @override
  String toString() {
    return 'InfoEventModel(walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay)';
  }
}

/// @nodoc
abstract mixin class $InfoEventModelCopyWith<$Res> {
  factory $InfoEventModelCopyWith(
          InfoEventModel value, $Res Function(InfoEventModel) _then) =
      _$InfoEventModelCopyWithImpl;
  @useResult
  $Res call(
      {String walletServicePubkey,
      List<String> methods,
      List<String>? notifications,
      String? clientPubkey,
      String? walletRelay});
}

/// @nodoc
class _$InfoEventModelCopyWithImpl<$Res>
    implements $InfoEventModelCopyWith<$Res> {
  _$InfoEventModelCopyWithImpl(this._self, this._then);

  final InfoEventModel _self;
  final $Res Function(InfoEventModel) _then;

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
  }) {
    return _then(_self.copyWith(
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class NewInfoEventModel extends InfoEventModel {
  const NewInfoEventModel(
      {required this.walletServicePubkey,
      required final List<String> methods,
      final List<String>? notifications,
      this.clientPubkey,
      this.walletRelay})
      : _methods = methods,
        _notifications = notifications,
        super._();

  @override
  final String walletServicePubkey;
  final List<String> _methods;
  @override
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String>? _notifications;
  @override
  List<String>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? clientPubkey;
  @override
  final String? walletRelay;

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewInfoEventModelCopyWith<NewInfoEventModel> get copyWith =>
      _$NewInfoEventModelCopyWithImpl<NewInfoEventModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewInfoEventModel &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      clientPubkey,
      walletRelay);

  @override
  String toString() {
    return 'InfoEventModel(walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay)';
  }
}

/// @nodoc
abstract mixin class $NewInfoEventModelCopyWith<$Res>
    implements $InfoEventModelCopyWith<$Res> {
  factory $NewInfoEventModelCopyWith(
          NewInfoEventModel value, $Res Function(NewInfoEventModel) _then) =
      _$NewInfoEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String walletServicePubkey,
      List<String> methods,
      List<String>? notifications,
      String? clientPubkey,
      String? walletRelay});
}

/// @nodoc
class _$NewInfoEventModelCopyWithImpl<$Res>
    implements $NewInfoEventModelCopyWith<$Res> {
  _$NewInfoEventModelCopyWithImpl(this._self, this._then);

  final NewInfoEventModel _self;
  final $Res Function(NewInfoEventModel) _then;

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
  }) {
    return _then(NewInfoEventModel(
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class InfoEventEventModel extends InfoEventModel {
  const InfoEventEventModel(
      {required this.walletServicePubkey,
      required final List<String> methods,
      final List<String>? notifications,
      this.clientPubkey,
      this.walletRelay,
      required this.eventId,
      required this.createdAt,
      required final List<String> relays})
      : _methods = methods,
        _notifications = notifications,
        _relays = relays,
        super._();

  @override
  final String walletServicePubkey;
  final List<String> _methods;
  @override
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String>? _notifications;
  @override
  List<String>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? clientPubkey;
  @override
  final String? walletRelay;
  final String eventId;
  final DateTime createdAt;
  final List<String> _relays;
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventEventModelCopyWith<InfoEventEventModel> get copyWith =>
      _$InfoEventEventModelCopyWithImpl<InfoEventEventModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEventEventModel &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._relays, _relays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      clientPubkey,
      walletRelay,
      eventId,
      createdAt,
      const DeepCollectionEquality().hash(_relays));

  @override
  String toString() {
    return 'InfoEventModel.event(walletServicePubkey: $walletServicePubkey, methods: $methods, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay, eventId: $eventId, createdAt: $createdAt, relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $InfoEventEventModelCopyWith<$Res>
    implements $InfoEventModelCopyWith<$Res> {
  factory $InfoEventEventModelCopyWith(
          InfoEventEventModel value, $Res Function(InfoEventEventModel) _then) =
      _$InfoEventEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String walletServicePubkey,
      List<String> methods,
      List<String>? notifications,
      String? clientPubkey,
      String? walletRelay,
      String eventId,
      DateTime createdAt,
      List<String> relays});
}

/// @nodoc
class _$InfoEventEventModelCopyWithImpl<$Res>
    implements $InfoEventEventModelCopyWith<$Res> {
  _$InfoEventEventModelCopyWithImpl(this._self, this._then);

  final InfoEventEventModel _self;
  final $Res Function(InfoEventEventModel) _then;

  /// Create a copy of InfoEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
    Object? eventId = null,
    Object? createdAt = null,
    Object? relays = null,
  }) {
    return _then(InfoEventEventModel(
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
