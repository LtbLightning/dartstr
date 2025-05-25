// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectionModel {
  String get clientPubkey;
  String get walletServicePubkey;
  String? get name;
  String? get lud16;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectionModelCopyWith<ConnectionModel> get copyWith =>
      _$ConnectionModelCopyWithImpl<ConnectionModel>(
          this as ConnectionModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientPubkey, walletServicePubkey, name, lud16);

  @override
  String toString() {
    return 'ConnectionModel(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, name: $name, lud16: $lud16)';
  }
}

/// @nodoc
abstract mixin class $ConnectionModelCopyWith<$Res> {
  factory $ConnectionModelCopyWith(
          ConnectionModel value, $Res Function(ConnectionModel) _then) =
      _$ConnectionModelCopyWithImpl;
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String? name,
      String? lud16});
}

/// @nodoc
class _$ConnectionModelCopyWithImpl<$Res>
    implements $ConnectionModelCopyWith<$Res> {
  _$ConnectionModelCopyWithImpl(this._self, this._then);

  final ConnectionModel _self;
  final $Res Function(ConnectionModel) _then;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? name = freezed,
    Object? lud16 = freezed,
  }) {
    return _then(_self.copyWith(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class WalletConnectionModel extends ConnectionModel {
  const WalletConnectionModel(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required final List<String> relays,
      required this.budgetRenewal,
      required this.createdAt,
      this.name,
      final List<String>? clientRelays,
      this.budgetRenewedAt,
      this.maxAmountSat,
      this.remainingAmountSat,
      this.expiresAt,
      final List<String>? methods,
      final List<String>? customMethods,
      final List<String>? notifications,
      final List<String>? customNotifications,
      this.isolated,
      this.isFrozen,
      final List<String>? categories,
      this.lud16})
      : _relays = relays,
        _clientRelays = clientRelays,
        _methods = methods,
        _customMethods = customMethods,
        _notifications = notifications,
        _customNotifications = customNotifications,
        _categories = categories,
        super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final List<String> _relays;
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final String budgetRenewal;
  final DateTime createdAt;
  @override
  final String? name;
  final List<String>? _clientRelays;
  List<String>? get clientRelays {
    final value = _clientRelays;
    if (value == null) return null;
    if (_clientRelays is EqualUnmodifiableListView) return _clientRelays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final int? budgetRenewedAt;
  final int? maxAmountSat;
  final int? remainingAmountSat;
  final int? expiresAt;
  final List<String>? _methods;
  List<String>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _customMethods;
  List<String>? get customMethods {
    final value = _customMethods;
    if (value == null) return null;
    if (_customMethods is EqualUnmodifiableListView) return _customMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _notifications;
  List<String>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _customNotifications;
  List<String>? get customNotifications {
    final value = _customNotifications;
    if (value == null) return null;
    if (_customNotifications is EqualUnmodifiableListView)
      return _customNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final bool? isolated;
  final bool? isFrozen;
  final List<String>? _categories;
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? lud16;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletConnectionModelCopyWith<WalletConnectionModel> get copyWith =>
      _$WalletConnectionModelCopyWithImpl<WalletConnectionModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletConnectionModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._clientRelays, _clientRelays) &&
            (identical(other.budgetRenewedAt, budgetRenewedAt) ||
                other.budgetRenewedAt == budgetRenewedAt) &&
            (identical(other.maxAmountSat, maxAmountSat) ||
                other.maxAmountSat == maxAmountSat) &&
            (identical(other.remainingAmountSat, remainingAmountSat) ||
                other.remainingAmountSat == remainingAmountSat) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._customMethods, _customMethods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._customNotifications, _customNotifications) &&
            (identical(other.isolated, isolated) ||
                other.isolated == isolated) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        clientPubkey,
        walletServicePubkey,
        const DeepCollectionEquality().hash(_relays),
        budgetRenewal,
        createdAt,
        name,
        const DeepCollectionEquality().hash(_clientRelays),
        budgetRenewedAt,
        maxAmountSat,
        remainingAmountSat,
        expiresAt,
        const DeepCollectionEquality().hash(_methods),
        const DeepCollectionEquality().hash(_customMethods),
        const DeepCollectionEquality().hash(_notifications),
        const DeepCollectionEquality().hash(_customNotifications),
        isolated,
        isFrozen,
        const DeepCollectionEquality().hash(_categories),
        lud16
      ]);

  @override
  String toString() {
    return 'ConnectionModel.wallet(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, relays: $relays, budgetRenewal: $budgetRenewal, createdAt: $createdAt, name: $name, clientRelays: $clientRelays, budgetRenewedAt: $budgetRenewedAt, maxAmountSat: $maxAmountSat, remainingAmountSat: $remainingAmountSat, expiresAt: $expiresAt, methods: $methods, customMethods: $customMethods, notifications: $notifications, customNotifications: $customNotifications, isolated: $isolated, isFrozen: $isFrozen, categories: $categories, lud16: $lud16)';
  }
}

/// @nodoc
abstract mixin class $WalletConnectionModelCopyWith<$Res>
    implements $ConnectionModelCopyWith<$Res> {
  factory $WalletConnectionModelCopyWith(WalletConnectionModel value,
          $Res Function(WalletConnectionModel) _then) =
      _$WalletConnectionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      List<String> relays,
      String budgetRenewal,
      DateTime createdAt,
      String? name,
      List<String>? clientRelays,
      int? budgetRenewedAt,
      int? maxAmountSat,
      int? remainingAmountSat,
      int? expiresAt,
      List<String>? methods,
      List<String>? customMethods,
      List<String>? notifications,
      List<String>? customNotifications,
      bool? isolated,
      bool? isFrozen,
      List<String>? categories,
      String? lud16});
}

/// @nodoc
class _$WalletConnectionModelCopyWithImpl<$Res>
    implements $WalletConnectionModelCopyWith<$Res> {
  _$WalletConnectionModelCopyWithImpl(this._self, this._then);

  final WalletConnectionModel _self;
  final $Res Function(WalletConnectionModel) _then;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? relays = null,
    Object? budgetRenewal = null,
    Object? createdAt = null,
    Object? name = freezed,
    Object? clientRelays = freezed,
    Object? budgetRenewedAt = freezed,
    Object? maxAmountSat = freezed,
    Object? remainingAmountSat = freezed,
    Object? expiresAt = freezed,
    Object? methods = freezed,
    Object? customMethods = freezed,
    Object? notifications = freezed,
    Object? customNotifications = freezed,
    Object? isolated = freezed,
    Object? isFrozen = freezed,
    Object? categories = freezed,
    Object? lud16 = freezed,
  }) {
    return _then(WalletConnectionModel(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      budgetRenewal: null == budgetRenewal
          ? _self.budgetRenewal
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      clientRelays: freezed == clientRelays
          ? _self._clientRelays
          : clientRelays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetRenewedAt: freezed == budgetRenewedAt
          ? _self.budgetRenewedAt
          : budgetRenewedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmountSat: freezed == maxAmountSat
          ? _self.maxAmountSat
          : maxAmountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAmountSat: freezed == remainingAmountSat
          ? _self.remainingAmountSat
          : remainingAmountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      methods: freezed == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customMethods: freezed == customMethods
          ? _self._customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotifications: freezed == customNotifications
          ? _self._customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isolated: freezed == isolated
          ? _self.isolated
          : isolated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFrozen: freezed == isFrozen
          ? _self.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ClientConnectionModel extends ConnectionModel {
  const ClientConnectionModel(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      this.name,
      this.lud16})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final String? name;
  @override
  final String? lud16;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientConnectionModelCopyWith<ClientConnectionModel> get copyWith =>
      _$ClientConnectionModelCopyWithImpl<ClientConnectionModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientConnectionModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientPubkey, walletServicePubkey, name, lud16);

  @override
  String toString() {
    return 'ConnectionModel.client(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, name: $name, lud16: $lud16)';
  }
}

/// @nodoc
abstract mixin class $ClientConnectionModelCopyWith<$Res>
    implements $ConnectionModelCopyWith<$Res> {
  factory $ClientConnectionModelCopyWith(ClientConnectionModel value,
          $Res Function(ClientConnectionModel) _then) =
      _$ClientConnectionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String? name,
      String? lud16});
}

/// @nodoc
class _$ClientConnectionModelCopyWithImpl<$Res>
    implements $ClientConnectionModelCopyWith<$Res> {
  _$ClientConnectionModelCopyWithImpl(this._self, this._then);

  final ClientConnectionModel _self;
  final $Res Function(ClientConnectionModel) _then;

  /// Create a copy of ConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? name = freezed,
    Object? lud16 = freezed,
  }) {
    return _then(ClientConnectionModel(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
