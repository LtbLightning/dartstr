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
  Uri get relayUrl;

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
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'Connection(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) _then) =
      _$ConnectionCopyWithImpl;
  @useResult
  $Res call({Uri relayUrl});
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
    Object? relayUrl = null,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class WalletConnection extends Connection {
  const WalletConnection(
      {required this.walletServiceKeyPair,
      required this.clientPubkey,
      this.clientSecret,
      this.clientRelayUrl,
      required this.relayUrl,
      required final List<Method> methods,
      final List<NotificationType>? notifications,
      this.lud16})
      : _methods = methods,
        _notifications = notifications,
        super._();

  final KeyPair walletServiceKeyPair;
  final String clientPubkey;
  final String? clientSecret;
  final Uri? clientRelayUrl;
  @override
  final Uri relayUrl;
  final List<Method> _methods;
  List<Method> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
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
            (identical(other.clientRelayUrl, clientRelayUrl) ||
                other.clientRelayUrl == clientRelayUrl) &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      walletServiceKeyPair,
      clientPubkey,
      clientSecret,
      clientRelayUrl,
      relayUrl,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      lud16);

  @override
  String toString() {
    return 'Connection.wallet(walletServiceKeyPair: $walletServiceKeyPair, clientPubkey: $clientPubkey, clientSecret: $clientSecret, clientRelayUrl: $clientRelayUrl, relayUrl: $relayUrl, methods: $methods, notifications: $notifications, lud16: $lud16)';
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
      Uri? clientRelayUrl,
      Uri relayUrl,
      List<Method> methods,
      List<NotificationType>? notifications,
      String? lud16});

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
    Object? clientRelayUrl = freezed,
    Object? relayUrl = null,
    Object? methods = null,
    Object? notifications = freezed,
    Object? lud16 = freezed,
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
      clientRelayUrl: freezed == clientRelayUrl
          ? _self.clientRelayUrl
          : clientRelayUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.relayUrl,
      this.name,
      this.icon,
      this.returnTo,
      this.expiresAt,
      this.maxAmountSat,
      this.budgetRenewal,
      final List<Method>? requestMethods,
      final List<NotificationType>? notificationTypes,
      this.isolated,
      this.metadata})
      : _requestMethods = requestMethods,
        _notificationTypes = notificationTypes,
        super._();

  final KeyPair clientKeyPair;
  @override
  final Uri relayUrl;
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
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientKeyPair,
      relayUrl,
      name,
      icon,
      returnTo,
      expiresAt,
      maxAmountSat,
      budgetRenewal,
      const DeepCollectionEquality().hash(_requestMethods),
      const DeepCollectionEquality().hash(_notificationTypes),
      isolated,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Connection.client(clientKeyPair: $clientKeyPair, relayUrl: $relayUrl, name: $name, icon: $icon, returnTo: $returnTo, expiresAt: $expiresAt, maxAmountSat: $maxAmountSat, budgetRenewal: $budgetRenewal, requestMethods: $requestMethods, notificationTypes: $notificationTypes, isolated: $isolated, metadata: $metadata)';
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
      Uri relayUrl,
      String? name,
      Uri? icon,
      Uri? returnTo,
      int? expiresAt,
      BigInt? maxAmountSat,
      BudgetRenewal? budgetRenewal,
      List<Method>? requestMethods,
      List<NotificationType>? notificationTypes,
      bool? isolated,
      Object? metadata});

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
    Object? relayUrl = null,
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
  }) {
    return _then(ClientConnection(
      clientKeyPair: null == clientKeyPair
          ? _self.clientKeyPair
          : clientKeyPair // ignore: cast_nullable_to_non_nullable
              as KeyPair,
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
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
