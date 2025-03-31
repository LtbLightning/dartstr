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
  List<Uri> get relays;

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
            const DeepCollectionEquality().equals(other.relays, relays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(relays));

  @override
  String toString() {
    return 'Connection(relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) _then) =
      _$ConnectionCopyWithImpl;
  @useResult
  $Res call({List<Uri> relays});
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
  }) {
    return _then(_self.copyWith(
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
    ));
  }
}

/// @nodoc

class WalletConnection extends Connection {
  const WalletConnection(
      {required this.walletServiceKeyPair,
      required this.clientPubkey,
      this.clientSecret,
      final List<Uri>? clientRelays,
      required final List<Uri> relays,
      final List<Method>? methods,
      final List<NotificationType>? notifications,
      this.lud16,
      final List<String>? customMethods,
      final List<String>? customNotifications})
      : _clientRelays = clientRelays,
        _relays = relays,
        _methods = methods,
        _notifications = notifications,
        _customMethods = customMethods,
        _customNotifications = customNotifications,
        super._();

  final KeyPair walletServiceKeyPair;
  final String clientPubkey;
  final String? clientSecret;
  final List<Uri>? _clientRelays;
  List<Uri>? get clientRelays {
    final value = _clientRelays;
    if (value == null) return null;
    if (_clientRelays is EqualUnmodifiableListView) return _clientRelays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Uri> _relays;
  @override
  List<Uri> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
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

  final String? lud16;
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
            (identical(other.walletServiceKeyPair, walletServiceKeyPair) ||
                other.walletServiceKeyPair == walletServiceKeyPair) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            const DeepCollectionEquality()
                .equals(other._clientRelays, _clientRelays) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16) &&
            const DeepCollectionEquality()
                .equals(other._customMethods, _customMethods) &&
            const DeepCollectionEquality()
                .equals(other._customNotifications, _customNotifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServiceKeyPair,
      clientPubkey,
      clientSecret,
      const DeepCollectionEquality().hash(_clientRelays),
      const DeepCollectionEquality().hash(_relays),
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      lud16,
      const DeepCollectionEquality().hash(_customMethods),
      const DeepCollectionEquality().hash(_customNotifications));

  @override
  String toString() {
    return 'Connection.wallet(walletServiceKeyPair: $walletServiceKeyPair, clientPubkey: $clientPubkey, clientSecret: $clientSecret, clientRelays: $clientRelays, relays: $relays, methods: $methods, notifications: $notifications, lud16: $lud16, customMethods: $customMethods, customNotifications: $customNotifications)';
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
      {KeyPair walletServiceKeyPair,
      String clientPubkey,
      String? clientSecret,
      List<Uri>? clientRelays,
      List<Uri> relays,
      List<Method>? methods,
      List<NotificationType>? notifications,
      String? lud16,
      List<String>? customMethods,
      List<String>? customNotifications});

  $KeyPairCopyWith<$Res> get walletServiceKeyPair;
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
    Object? walletServiceKeyPair = null,
    Object? clientPubkey = null,
    Object? clientSecret = freezed,
    Object? clientRelays = freezed,
    Object? relays = null,
    Object? methods = freezed,
    Object? notifications = freezed,
    Object? lud16 = freezed,
    Object? customMethods = freezed,
    Object? customNotifications = freezed,
  }) {
    return _then(WalletConnection(
      walletServiceKeyPair: null == walletServiceKeyPair
          ? _self.walletServiceKeyPair
          : walletServiceKeyPair // ignore: cast_nullable_to_non_nullable
              as KeyPair,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: freezed == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      clientRelays: freezed == clientRelays
          ? _self._clientRelays
          : clientRelays // ignore: cast_nullable_to_non_nullable
              as List<Uri>?,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
      methods: freezed == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>?,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyPairCopyWith<$Res> get walletServiceKeyPair {
    return $KeyPairCopyWith<$Res>(_self.walletServiceKeyPair, (value) {
      return _then(_self.copyWith(walletServiceKeyPair: value));
    });
  }
}

/// @nodoc

class ClientConnection extends Connection {
  const ClientConnection(
      {required this.clientKeyPair,
      required final List<Uri> relays,
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

  final KeyPair clientKeyPair;
  final List<Uri> _relays;
  @override
  List<Uri> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final String? name;
  final Uri? icon;
  final Uri? returnTo;
  final int? expiresAt;
  final BigInt? maxAmountSat;
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
            (identical(other.clientKeyPair, clientKeyPair) ||
                other.clientKeyPair == clientKeyPair) &&
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
      clientKeyPair,
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
    return 'Connection.client(clientKeyPair: $clientKeyPair, relays: $relays, name: $name, icon: $icon, returnTo: $returnTo, expiresAt: $expiresAt, maxAmountSat: $maxAmountSat, budgetRenewal: $budgetRenewal, requestMethods: $requestMethods, notificationTypes: $notificationTypes, isolated: $isolated, metadata: $metadata, customRequestMethods: $customRequestMethods, customNotificationTypes: $customNotificationTypes)';
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
      {KeyPair clientKeyPair,
      List<Uri> relays,
      String? name,
      Uri? icon,
      Uri? returnTo,
      int? expiresAt,
      BigInt? maxAmountSat,
      BudgetRenewal? budgetRenewal,
      List<Method>? requestMethods,
      List<NotificationType>? notificationTypes,
      bool? isolated,
      Object? metadata,
      List<String>? customRequestMethods,
      List<String>? customNotificationTypes});

  $KeyPairCopyWith<$Res> get clientKeyPair;
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
    Object? clientKeyPair = null,
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
      clientKeyPair: null == clientKeyPair
          ? _self.clientKeyPair
          : clientKeyPair // ignore: cast_nullable_to_non_nullable
              as KeyPair,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<Uri>,
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
              as BigInt?,
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

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeyPairCopyWith<$Res> get clientKeyPair {
    return $KeyPairCopyWith<$Res>(_self.clientKeyPair, (value) {
      return _then(_self.copyWith(clientKeyPair: value));
    });
  }
}

// dart format on
