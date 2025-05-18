// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Connection {
  List<String> get relays;
  BudgetRenewal? get budgetRenewal;
  String? get name;
  int? get maxAmountSat;
  int? get expiresAt;
  bool? get isolated;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectionCopyWith<Connection> get copyWith =>
      _$ConnectionCopyWithImpl<Connection>(this as Connection, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Connection &&
            const DeepCollectionEquality().equals(other.relays, relays) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maxAmountSat, maxAmountSat) ||
                other.maxAmountSat == maxAmountSat) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.isolated, isolated) ||
                other.isolated == isolated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(relays),
      budgetRenewal,
      name,
      maxAmountSat,
      expiresAt,
      isolated);

  @override
  String toString() {
    return 'Connection(relays: $relays, budgetRenewal: $budgetRenewal, name: $name, maxAmountSat: $maxAmountSat, expiresAt: $expiresAt, isolated: $isolated)';
  }
}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) _then) =
      _$ConnectionCopyWithImpl;
  @useResult
  $Res call(
      {List<String> relays,
      BudgetRenewal budgetRenewal,
      String? name,
      int? maxAmountSat,
      int? expiresAt,
      bool? isolated});
}

/// @nodoc
class _$ConnectionCopyWithImpl<$Res> implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._self, this._then);

  final Connection _self;
  final $Res Function(Connection) _then;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relays = null,
    Object? budgetRenewal = null,
    Object? name = freezed,
    Object? maxAmountSat = freezed,
    Object? expiresAt = freezed,
    Object? isolated = freezed,
  }) {
    return _then(_self.copyWith(
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      budgetRenewal: null == budgetRenewal
          ? _self.budgetRenewal!
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as BudgetRenewal,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      maxAmountSat: freezed == maxAmountSat
          ? _self.maxAmountSat
          : maxAmountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      isolated: freezed == isolated
          ? _self.isolated
          : isolated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class WalletConnection extends Connection {
  const WalletConnection(
      {required this.walletServicePrivateKey,
      required this.walletServicePubkey,
      required this.clientPubkey,
      required final List<String> relays,
      required this.budgetRenewal,
      required this.createdAt,
      this.name,
      final List<String>? clientRelays,
      final List<Method>? methods,
      final List<NotificationType>? notifications,
      final List<String>? customMethods,
      final List<String>? customNotifications,
      this.budgetRenewedAt,
      this.maxAmountSat,
      this.remainingAmountSat,
      this.expiresAt,
      this.isolated,
      this.isFrozen,
      final List<String>? categories,
      this.lud16})
      : _relays = relays,
        _clientRelays = clientRelays,
        _methods = methods,
        _notifications = notifications,
        _customMethods = customMethods,
        _customNotifications = customNotifications,
        _categories = categories,
        super._();

  final String walletServicePrivateKey;
  final String walletServicePubkey;
  final String clientPubkey;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final BudgetRenewal budgetRenewal;
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

  final List<Method>? _methods;
  List<Method>? get methods {
    final value = _methods;
    if (value == null) return null;
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationType>? _notifications;
  List<NotificationType>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
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

  final List<String>? _customNotifications;
  List<String>? get customNotifications {
    final value = _customNotifications;
    if (value == null) return null;
    if (_customNotifications is EqualUnmodifiableListView)
      return _customNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final int? budgetRenewedAt;
  @override
  final int? maxAmountSat;
  final int? remainingAmountSat;
  @override
  final int? expiresAt;
  @override
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

  final String? lud16;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletConnectionCopyWith<WalletConnection> get copyWith =>
      _$WalletConnectionCopyWithImpl<WalletConnection>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletConnection &&
            (identical(
                    other.walletServicePrivateKey, walletServicePrivateKey) ||
                other.walletServicePrivateKey == walletServicePrivateKey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._clientRelays, _clientRelays) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._customMethods, _customMethods) &&
            const DeepCollectionEquality()
                .equals(other._customNotifications, _customNotifications) &&
            (identical(other.budgetRenewedAt, budgetRenewedAt) ||
                other.budgetRenewedAt == budgetRenewedAt) &&
            (identical(other.maxAmountSat, maxAmountSat) ||
                other.maxAmountSat == maxAmountSat) &&
            (identical(other.remainingAmountSat, remainingAmountSat) ||
                other.remainingAmountSat == remainingAmountSat) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
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
        walletServicePrivateKey,
        walletServicePubkey,
        clientPubkey,
        const DeepCollectionEquality().hash(_relays),
        budgetRenewal,
        createdAt,
        name,
        const DeepCollectionEquality().hash(_clientRelays),
        const DeepCollectionEquality().hash(_methods),
        const DeepCollectionEquality().hash(_notifications),
        const DeepCollectionEquality().hash(_customMethods),
        const DeepCollectionEquality().hash(_customNotifications),
        budgetRenewedAt,
        maxAmountSat,
        remainingAmountSat,
        expiresAt,
        isolated,
        isFrozen,
        const DeepCollectionEquality().hash(_categories),
        lud16
      ]);

  @override
  String toString() {
    return 'Connection.wallet(walletServicePrivateKey: $walletServicePrivateKey, walletServicePubkey: $walletServicePubkey, clientPubkey: $clientPubkey, relays: $relays, budgetRenewal: $budgetRenewal, createdAt: $createdAt, name: $name, clientRelays: $clientRelays, methods: $methods, notifications: $notifications, customMethods: $customMethods, customNotifications: $customNotifications, budgetRenewedAt: $budgetRenewedAt, maxAmountSat: $maxAmountSat, remainingAmountSat: $remainingAmountSat, expiresAt: $expiresAt, isolated: $isolated, isFrozen: $isFrozen, categories: $categories, lud16: $lud16)';
  }
}

/// @nodoc
abstract mixin class $WalletConnectionCopyWith<$Res>
    implements $ConnectionCopyWith<$Res> {
  factory $WalletConnectionCopyWith(
          WalletConnection value, $Res Function(WalletConnection) _then) =
      _$WalletConnectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String walletServicePrivateKey,
      String walletServicePubkey,
      String clientPubkey,
      List<String> relays,
      BudgetRenewal budgetRenewal,
      DateTime createdAt,
      String? name,
      List<String>? clientRelays,
      List<Method>? methods,
      List<NotificationType>? notifications,
      List<String>? customMethods,
      List<String>? customNotifications,
      int? budgetRenewedAt,
      int? maxAmountSat,
      int? remainingAmountSat,
      int? expiresAt,
      bool? isolated,
      bool? isFrozen,
      List<String>? categories,
      String? lud16});
}

/// @nodoc
class _$WalletConnectionCopyWithImpl<$Res>
    implements $WalletConnectionCopyWith<$Res> {
  _$WalletConnectionCopyWithImpl(this._self, this._then);

  final WalletConnection _self;
  final $Res Function(WalletConnection) _then;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? walletServicePrivateKey = null,
    Object? walletServicePubkey = null,
    Object? clientPubkey = null,
    Object? relays = null,
    Object? budgetRenewal = null,
    Object? createdAt = null,
    Object? name = freezed,
    Object? clientRelays = freezed,
    Object? methods = freezed,
    Object? notifications = freezed,
    Object? customMethods = freezed,
    Object? customNotifications = freezed,
    Object? budgetRenewedAt = freezed,
    Object? maxAmountSat = freezed,
    Object? remainingAmountSat = freezed,
    Object? expiresAt = freezed,
    Object? isolated = freezed,
    Object? isFrozen = freezed,
    Object? categories = freezed,
    Object? lud16 = freezed,
  }) {
    return _then(WalletConnection(
      walletServicePrivateKey: null == walletServicePrivateKey
          ? _self.walletServicePrivateKey
          : walletServicePrivateKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      budgetRenewal: null == budgetRenewal
          ? _self.budgetRenewal
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as BudgetRenewal,
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
      methods: freezed == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>?,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      customMethods: freezed == customMethods
          ? _self._customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotifications: freezed == customNotifications
          ? _self._customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
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

class ClientConnection extends Connection {
  const ClientConnection(
      {required this.clientSecret,
      required final List<String> relays,
      this.name,
      this.icon,
      this.returnTo,
      this.expiresAt,
      this.maxAmountSat,
      this.budgetRenewal,
      final List<Method>? requestMethods,
      final List<NotificationType>? notificationTypes,
      this.isolated,
      this.metadata,
      final List<String>? customRequestMethods,
      final List<String>? customNotificationTypes})
      : _relays = relays,
        _requestMethods = requestMethods,
        _notificationTypes = notificationTypes,
        _customRequestMethods = customRequestMethods,
        _customNotificationTypes = customNotificationTypes,
        super._();

  final String clientSecret;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final String? name;
  final Uri? icon;
  final Uri? returnTo;
  @override
  final int? expiresAt;
  @override
  final int? maxAmountSat;
  @override
  final BudgetRenewal? budgetRenewal;
  final List<Method>? _requestMethods;
  List<Method>? get requestMethods {
    final value = _requestMethods;
    if (value == null) return null;
    if (_requestMethods is EqualUnmodifiableListView) return _requestMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotificationType>? _notificationTypes;
  List<NotificationType>? get notificationTypes {
    final value = _notificationTypes;
    if (value == null) return null;
    if (_notificationTypes is EqualUnmodifiableListView)
      return _notificationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isolated;
  final Object? metadata;
  final List<String>? _customRequestMethods;
  List<String>? get customRequestMethods {
    final value = _customRequestMethods;
    if (value == null) return null;
    if (_customRequestMethods is EqualUnmodifiableListView)
      return _customRequestMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _customNotificationTypes;
  List<String>? get customNotificationTypes {
    final value = _customNotificationTypes;
    if (value == null) return null;
    if (_customNotificationTypes is EqualUnmodifiableListView)
      return _customNotificationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientConnectionCopyWith<ClientConnection> get copyWith =>
      _$ClientConnectionCopyWithImpl<ClientConnection>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientConnection &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.returnTo, returnTo) ||
                other.returnTo == returnTo) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxAmountSat, maxAmountSat) ||
                other.maxAmountSat == maxAmountSat) &&
            (identical(other.budgetRenewal, budgetRenewal) ||
                other.budgetRenewal == budgetRenewal) &&
            const DeepCollectionEquality()
                .equals(other._requestMethods, _requestMethods) &&
            const DeepCollectionEquality()
                .equals(other._notificationTypes, _notificationTypes) &&
            (identical(other.isolated, isolated) ||
                other.isolated == isolated) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            const DeepCollectionEquality()
                .equals(other._customRequestMethods, _customRequestMethods) &&
            const DeepCollectionEquality().equals(
                other._customNotificationTypes, _customNotificationTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientSecret,
      const DeepCollectionEquality().hash(_relays),
      name,
      icon,
      returnTo,
      expiresAt,
      maxAmountSat,
      budgetRenewal,
      const DeepCollectionEquality().hash(_requestMethods),
      const DeepCollectionEquality().hash(_notificationTypes),
      isolated,
      const DeepCollectionEquality().hash(metadata),
      const DeepCollectionEquality().hash(_customRequestMethods),
      const DeepCollectionEquality().hash(_customNotificationTypes));

  @override
  String toString() {
    return 'Connection.client(clientSecret: $clientSecret, relays: $relays, name: $name, icon: $icon, returnTo: $returnTo, expiresAt: $expiresAt, maxAmountSat: $maxAmountSat, budgetRenewal: $budgetRenewal, requestMethods: $requestMethods, notificationTypes: $notificationTypes, isolated: $isolated, metadata: $metadata, customRequestMethods: $customRequestMethods, customNotificationTypes: $customNotificationTypes)';
  }
}

/// @nodoc
abstract mixin class $ClientConnectionCopyWith<$Res>
    implements $ConnectionCopyWith<$Res> {
  factory $ClientConnectionCopyWith(
          ClientConnection value, $Res Function(ClientConnection) _then) =
      _$ClientConnectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientSecret,
      List<String> relays,
      String? name,
      Uri? icon,
      Uri? returnTo,
      int? expiresAt,
      int? maxAmountSat,
      BudgetRenewal? budgetRenewal,
      List<Method>? requestMethods,
      List<NotificationType>? notificationTypes,
      bool? isolated,
      Object? metadata,
      List<String>? customRequestMethods,
      List<String>? customNotificationTypes});
}

/// @nodoc
class _$ClientConnectionCopyWithImpl<$Res>
    implements $ClientConnectionCopyWith<$Res> {
  _$ClientConnectionCopyWithImpl(this._self, this._then);

  final ClientConnection _self;
  final $Res Function(ClientConnection) _then;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientSecret = null,
    Object? relays = null,
    Object? name = freezed,
    Object? icon = freezed,
    Object? returnTo = freezed,
    Object? expiresAt = freezed,
    Object? maxAmountSat = freezed,
    Object? budgetRenewal = freezed,
    Object? requestMethods = freezed,
    Object? notificationTypes = freezed,
    Object? isolated = freezed,
    Object? metadata = freezed,
    Object? customRequestMethods = freezed,
    Object? customNotificationTypes = freezed,
  }) {
    return _then(ClientConnection(
      clientSecret: null == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Uri?,
      returnTo: freezed == returnTo
          ? _self.returnTo
          : returnTo // ignore: cast_nullable_to_non_nullable
              as Uri?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmountSat: freezed == maxAmountSat
          ? _self.maxAmountSat
          : maxAmountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      budgetRenewal: freezed == budgetRenewal
          ? _self.budgetRenewal
          : budgetRenewal // ignore: cast_nullable_to_non_nullable
              as BudgetRenewal?,
      requestMethods: freezed == requestMethods
          ? _self._requestMethods
          : requestMethods // ignore: cast_nullable_to_non_nullable
              as List<Method>?,
      notificationTypes: freezed == notificationTypes
          ? _self._notificationTypes
          : notificationTypes // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      isolated: freezed == isolated
          ? _self.isolated
          : isolated // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata ? _self.metadata : metadata,
      customRequestMethods: freezed == customRequestMethods
          ? _self._customRequestMethods
          : customRequestMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      customNotificationTypes: freezed == customNotificationTypes
          ? _self._customNotificationTypes
          : customNotificationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
