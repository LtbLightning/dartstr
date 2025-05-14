// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientConnectionModel {
  String get clientPubkey;
  String get name;
  int get walletServiceAccountIndex;
  String get walletServicePubkey;
  List<String> get relays;
  List<String>? get clientRelays;
  String get budgetRenewal;
  int get budgetRenewedAt;
  int? get maxAmountSat;
  int? get remainingAmountSat;
  int? get expiresAt;
  List<String>? get methods;
  List<String>? get customMethods;
  List<String>? get notifications;
  List<String>? get customNotifications;
  bool get isolated;
  bool get isFrozen;
  List<String>? get categories;
  DateTime get createdAt;

  /// Create a copy of ClientConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientConnectionModelCopyWith<ClientConnectionModel> get copyWith =>
      _$ClientConnectionModelCopyWithImpl<ClientConnectionModel>(
          this as ClientConnectionModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientConnectionModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.walletServiceAccountIndex,
                    walletServiceAccountIndex) ||
                other.walletServiceAccountIndex == walletServiceAccountIndex) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other.relays, relays) &&
            const DeepCollectionEquality()
                .equals(other.clientRelays, clientRelays) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
            (identical(other.budgetRenewedAt, budgetRenewedAt) ||
                other.budgetRenewedAt == budgetRenewedAt) &&
            (identical(other.maxAmountSat, maxAmountSat) ||
                other.maxAmountSat == maxAmountSat) &&
            (identical(other.remainingAmountSat, remainingAmountSat) ||
                other.remainingAmountSat == remainingAmountSat) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other.methods, methods) &&
            const DeepCollectionEquality()
                .equals(other.customMethods, customMethods) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality()
                .equals(other.customNotifications, customNotifications) &&
            (identical(other.isolated, isolated) ||
                other.isolated == isolated) &&
            (identical(other.isFrozen, isFrozen) ||
                other.isFrozen == isFrozen) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        clientPubkey,
        name,
        walletServiceAccountIndex,
        walletServicePubkey,
        const DeepCollectionEquality().hash(relays),
        const DeepCollectionEquality().hash(clientRelays),
        budgetRenewal,
        budgetRenewedAt,
        maxAmountSat,
        remainingAmountSat,
        expiresAt,
        const DeepCollectionEquality().hash(methods),
        const DeepCollectionEquality().hash(customMethods),
        const DeepCollectionEquality().hash(notifications),
        const DeepCollectionEquality().hash(customNotifications),
        isolated,
        isFrozen,
        const DeepCollectionEquality().hash(categories),
        createdAt
      ]);

  @override
  String toString() {
    return 'ClientConnectionModel(clientPubkey: $clientPubkey, name: $name, walletServiceAccountIndex: $walletServiceAccountIndex, walletServicePubkey: $walletServicePubkey, relays: $relays, clientRelays: $clientRelays, budgetRenewal: $budgetRenewal, budgetRenewedAt: $budgetRenewedAt, maxAmountSat: $maxAmountSat, remainingAmountSat: $remainingAmountSat, expiresAt: $expiresAt, methods: $methods, customMethods: $customMethods, notifications: $notifications, customNotifications: $customNotifications, isolated: $isolated, isFrozen: $isFrozen, categories: $categories, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ClientConnectionModelCopyWith<$Res> {
  factory $ClientConnectionModelCopyWith(ClientConnectionModel value,
          $Res Function(ClientConnectionModel) _then) =
      _$ClientConnectionModelCopyWithImpl;
  @useResult
  $Res call(
      {String clientPubkey,
      String name,
      int walletServiceAccountIndex,
      String walletServicePubkey,
      List<String> relays,
      List<String>? clientRelays,
      String budgetRenewal,
      int budgetRenewedAt,
      int? maxAmountSat,
      int? remainingAmountSat,
      int? expiresAt,
      List<String>? methods,
      List<String>? customMethods,
      List<String>? notifications,
      List<String>? customNotifications,
      bool isolated,
      bool isFrozen,
      List<String>? categories,
      DateTime createdAt});
}

/// @nodoc
class _$ClientConnectionModelCopyWithImpl<$Res>
    implements $ClientConnectionModelCopyWith<$Res> {
  _$ClientConnectionModelCopyWithImpl(this._self, this._then);

  final ClientConnectionModel _self;
  final $Res Function(ClientConnectionModel) _then;

  /// Create a copy of ClientConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPubkey = null,
    Object? name = null,
    Object? walletServiceAccountIndex = null,
    Object? walletServicePubkey = null,
    Object? relays = null,
    Object? clientRelays = freezed,
    Object? budgetRenewal = null,
    Object? budgetRenewedAt = null,
    Object? maxAmountSat = freezed,
    Object? remainingAmountSat = freezed,
    Object? expiresAt = freezed,
    Object? methods = freezed,
    Object? customMethods = freezed,
    Object? notifications = freezed,
    Object? customNotifications = freezed,
    Object? isolated = null,
    Object? isFrozen = null,
    Object? categories = freezed,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      walletServiceAccountIndex: null == walletServiceAccountIndex
          ? _self.walletServiceAccountIndex
          : walletServiceAccountIndex // ignore: cast_nullable_to_non_nullable
              as int,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      clientRelays: freezed == clientRelays
          ? _self.clientRelays
          : clientRelays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetRenewal: null == budgetRenewal
          ? _self.budgetRenewal
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as String,
      budgetRenewedAt: null == budgetRenewedAt
          ? _self.budgetRenewedAt
          : budgetRenewedAt // ignore: cast_nullable_to_non_nullable
              as int,
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
          ? _self.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customMethods: freezed == customMethods
          ? _self.customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotifications: freezed == customNotifications
          ? _self.customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isolated: null == isolated
          ? _self.isolated
          : isolated // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: null == isFrozen
          ? _self.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _ClientConnectionModel extends ClientConnectionModel {
  const _ClientConnectionModel(
      {required this.clientPubkey,
      required this.name,
      required this.walletServiceAccountIndex,
      required this.walletServicePubkey,
      required final List<String> relays,
      required final List<String>? clientRelays,
      required this.budgetRenewal,
      required this.budgetRenewedAt,
      required this.maxAmountSat,
      required this.remainingAmountSat,
      required this.expiresAt,
      required final List<String>? methods,
      required final List<String>? customMethods,
      required final List<String>? notifications,
      required final List<String>? customNotifications,
      required this.isolated,
      required this.isFrozen,
      required final List<String>? categories,
      required this.createdAt})
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
  final String name;
  @override
  final int walletServiceAccountIndex;
  @override
  final String walletServicePubkey;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final List<String>? _clientRelays;
  @override
  List<String>? get clientRelays {
    final value = _clientRelays;
    if (value == null) return null;
    if (_clientRelays is EqualUnmodifiableListView) return _clientRelays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String budgetRenewal;
  @override
  final int budgetRenewedAt;
  @override
  final int? maxAmountSat;
  @override
  final int? remainingAmountSat;
  @override
  final int? expiresAt;
  final List<String>? _methods;
  @override
  List<String>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _customMethods;
  @override
  List<String>? get customMethods {
    final value = _customMethods;
    if (value == null) return null;
    if (_customMethods is EqualUnmodifiableListView) return _customMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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

  @override
  final bool isolated;
  @override
  final bool isFrozen;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime createdAt;

  /// Create a copy of ClientConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientConnectionModelCopyWith<_ClientConnectionModel> get copyWith =>
      __$ClientConnectionModelCopyWithImpl<_ClientConnectionModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientConnectionModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.walletServiceAccountIndex,
                    walletServiceAccountIndex) ||
                other.walletServiceAccountIndex == walletServiceAccountIndex) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            const DeepCollectionEquality()
                .equals(other._clientRelays, _clientRelays) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        clientPubkey,
        name,
        walletServiceAccountIndex,
        walletServicePubkey,
        const DeepCollectionEquality().hash(_relays),
        const DeepCollectionEquality().hash(_clientRelays),
        budgetRenewal,
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
        createdAt
      ]);

  @override
  String toString() {
    return 'ClientConnectionModel(clientPubkey: $clientPubkey, name: $name, walletServiceAccountIndex: $walletServiceAccountIndex, walletServicePubkey: $walletServicePubkey, relays: $relays, clientRelays: $clientRelays, budgetRenewal: $budgetRenewal, budgetRenewedAt: $budgetRenewedAt, maxAmountSat: $maxAmountSat, remainingAmountSat: $remainingAmountSat, expiresAt: $expiresAt, methods: $methods, customMethods: $customMethods, notifications: $notifications, customNotifications: $customNotifications, isolated: $isolated, isFrozen: $isFrozen, categories: $categories, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ClientConnectionModelCopyWith<$Res>
    implements $ClientConnectionModelCopyWith<$Res> {
  factory _$ClientConnectionModelCopyWith(_ClientConnectionModel value,
          $Res Function(_ClientConnectionModel) _then) =
      __$ClientConnectionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String name,
      int walletServiceAccountIndex,
      String walletServicePubkey,
      List<String> relays,
      List<String>? clientRelays,
      String budgetRenewal,
      int budgetRenewedAt,
      int? maxAmountSat,
      int? remainingAmountSat,
      int? expiresAt,
      List<String>? methods,
      List<String>? customMethods,
      List<String>? notifications,
      List<String>? customNotifications,
      bool isolated,
      bool isFrozen,
      List<String>? categories,
      DateTime createdAt});
}

/// @nodoc
class __$ClientConnectionModelCopyWithImpl<$Res>
    implements _$ClientConnectionModelCopyWith<$Res> {
  __$ClientConnectionModelCopyWithImpl(this._self, this._then);

  final _ClientConnectionModel _self;
  final $Res Function(_ClientConnectionModel) _then;

  /// Create a copy of ClientConnectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? name = null,
    Object? walletServiceAccountIndex = null,
    Object? walletServicePubkey = null,
    Object? relays = null,
    Object? clientRelays = freezed,
    Object? budgetRenewal = null,
    Object? budgetRenewedAt = null,
    Object? maxAmountSat = freezed,
    Object? remainingAmountSat = freezed,
    Object? expiresAt = freezed,
    Object? methods = freezed,
    Object? customMethods = freezed,
    Object? notifications = freezed,
    Object? customNotifications = freezed,
    Object? isolated = null,
    Object? isFrozen = null,
    Object? categories = freezed,
    Object? createdAt = null,
  }) {
    return _then(_ClientConnectionModel(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      walletServiceAccountIndex: null == walletServiceAccountIndex
          ? _self.walletServiceAccountIndex
          : walletServiceAccountIndex // ignore: cast_nullable_to_non_nullable
              as int,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      clientRelays: freezed == clientRelays
          ? _self._clientRelays
          : clientRelays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      budgetRenewal: null == budgetRenewal
          ? _self.budgetRenewal
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as String,
      budgetRenewedAt: null == budgetRenewedAt
          ? _self.budgetRenewedAt
          : budgetRenewedAt // ignore: cast_nullable_to_non_nullable
              as int,
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
      isolated: null == isolated
          ? _self.isolated
          : isolated // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrozen: null == isFrozen
          ? _self.isFrozen
          : isFrozen // ignore: cast_nullable_to_non_nullable
              as bool,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
