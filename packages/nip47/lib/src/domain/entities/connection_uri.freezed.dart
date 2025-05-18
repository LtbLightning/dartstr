// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_uri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectionUri {
  List<String> get relays;

  /// Create a copy of ConnectionUri
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectionUriCopyWith<ConnectionUri> get copyWith =>
      _$ConnectionUriCopyWithImpl<ConnectionUri>(
          this as ConnectionUri, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionUri &&
            const DeepCollectionEquality().equals(other.relays, relays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(relays));

  @override
  String toString() {
    return 'ConnectionUri(relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $ConnectionUriCopyWith<$Res> {
  factory $ConnectionUriCopyWith(
          ConnectionUri value, $Res Function(ConnectionUri) _then) =
      _$ConnectionUriCopyWithImpl;
  @useResult
  $Res call({List<String> relays});
}

/// @nodoc
class _$ConnectionUriCopyWithImpl<$Res>
    implements $ConnectionUriCopyWith<$Res> {
  _$ConnectionUriCopyWithImpl(this._self, this._then);

  final ConnectionUri _self;
  final $Res Function(ConnectionUri) _then;

  /// Create a copy of ConnectionUri
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
              as List<String>,
    ));
  }
}

/// @nodoc

class WalletConnectConnectionUri extends ConnectionUri {
  const WalletConnectConnectionUri(
      {required this.clientSecret,
      required this.walletServicePubkey,
      required final List<String> relays,
      this.lud16})
      : _relays = relays,
        super._();

  final String clientSecret;
  final String walletServicePubkey;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final String? lud16;

  /// Create a copy of ConnectionUri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletConnectConnectionUriCopyWith<WalletConnectConnectionUri>
      get copyWith =>
          _$WalletConnectConnectionUriCopyWithImpl<WalletConnectConnectionUri>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletConnectConnectionUri &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientSecret,
      walletServicePubkey, const DeepCollectionEquality().hash(_relays), lud16);

  @override
  String toString() {
    return 'ConnectionUri.walletConnect(clientSecret: $clientSecret, walletServicePubkey: $walletServicePubkey, relays: $relays, lud16: $lud16)';
  }
}

/// @nodoc
abstract mixin class $WalletConnectConnectionUriCopyWith<$Res>
    implements $ConnectionUriCopyWith<$Res> {
  factory $WalletConnectConnectionUriCopyWith(WalletConnectConnectionUri value,
          $Res Function(WalletConnectConnectionUri) _then) =
      _$WalletConnectConnectionUriCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientSecret,
      String walletServicePubkey,
      List<String> relays,
      String? lud16});
}

/// @nodoc
class _$WalletConnectConnectionUriCopyWithImpl<$Res>
    implements $WalletConnectConnectionUriCopyWith<$Res> {
  _$WalletConnectConnectionUriCopyWithImpl(this._self, this._then);

  final WalletConnectConnectionUri _self;
  final $Res Function(WalletConnectConnectionUri) _then;

  /// Create a copy of ConnectionUri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientSecret = null,
    Object? walletServicePubkey = null,
    Object? relays = null,
    Object? lud16 = freezed,
  }) {
    return _then(WalletConnectConnectionUri(
      clientSecret: null == clientSecret
          ? _self.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lud16: freezed == lud16
          ? _self.lud16
          : lud16 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class WalletAuthConnectionUri extends ConnectionUri {
  const WalletAuthConnectionUri(
      {required this.clientPubkey,
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

  final String clientPubkey;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final String? name;
  final Uri? icon;
  final Uri? returnTo;
  final int? expiresAt;
  final int? maxAmountSat;
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

  /// Create a copy of ConnectionUri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletAuthConnectionUriCopyWith<WalletAuthConnectionUri> get copyWith =>
      _$WalletAuthConnectionUriCopyWithImpl<WalletAuthConnectionUri>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletAuthConnectionUri &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
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
      clientPubkey,
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
    return 'ConnectionUri.walletAuth(clientPubkey: $clientPubkey, relays: $relays, name: $name, icon: $icon, returnTo: $returnTo, expiresAt: $expiresAt, maxAmountSat: $maxAmountSat, budgetRenewal: $budgetRenewal, requestMethods: $requestMethods, notificationTypes: $notificationTypes, isolated: $isolated, metadata: $metadata, customRequestMethods: $customRequestMethods, customNotificationTypes: $customNotificationTypes)';
  }
}

/// @nodoc
abstract mixin class $WalletAuthConnectionUriCopyWith<$Res>
    implements $ConnectionUriCopyWith<$Res> {
  factory $WalletAuthConnectionUriCopyWith(WalletAuthConnectionUri value,
          $Res Function(WalletAuthConnectionUri) _then) =
      _$WalletAuthConnectionUriCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
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
class _$WalletAuthConnectionUriCopyWithImpl<$Res>
    implements $WalletAuthConnectionUriCopyWith<$Res> {
  _$WalletAuthConnectionUriCopyWithImpl(this._self, this._then);

  final WalletAuthConnectionUri _self;
  final $Res Function(WalletAuthConnectionUri) _then;

  /// Create a copy of ConnectionUri
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
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
    return _then(WalletAuthConnectionUri(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
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
