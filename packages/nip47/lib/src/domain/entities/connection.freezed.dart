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
Connection _$ConnectionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'wallet':
      return WalletConnection.fromJson(json);
    case 'client':
      return ClientConnection.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Connection',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Connection {
  String get pubkey;
  String get relayUrl;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectionCopyWith<Connection> get copyWith =>
      _$ConnectionCopyWithImpl<Connection>(this as Connection, _$identity);

  /// Serializes this Connection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Connection &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pubkey, relayUrl);

  @override
  String toString() {
    return 'Connection(pubkey: $pubkey, relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) _then) =
      _$ConnectionCopyWithImpl;
  @useResult
  $Res call({String pubkey, String relayUrl});
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
    Object? pubkey = null,
    Object? relayUrl = null,
  }) {
    return _then(_self.copyWith(
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class WalletConnection extends Connection {
  const WalletConnection(
      {required this.pubkey,
      required this.walletServicePubkey,
      required this.relayUrl,
      required this.secret,
      required final List<Method> methods,
      final List<NotificationType>? notifications,
      this.lud16,
      final String? $type})
      : _methods = methods,
        _notifications = notifications,
        $type = $type ?? 'wallet',
        super._();
  factory WalletConnection.fromJson(Map<String, dynamic> json) =>
      _$WalletConnectionFromJson(json);

  @override
  final String pubkey;
  final String walletServicePubkey;
  @override
  final String relayUrl;
  final String secret;
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletConnectionCopyWith<WalletConnection> get copyWith =>
      _$WalletConnectionCopyWithImpl<WalletConnection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WalletConnectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletConnection &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.lud16, lud16) || other.lud16 == lud16));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pubkey,
      walletServicePubkey,
      relayUrl,
      secret,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications),
      lud16);

  @override
  String toString() {
    return 'Connection.wallet(pubkey: $pubkey, walletServicePubkey: $walletServicePubkey, relayUrl: $relayUrl, secret: $secret, methods: $methods, notifications: $notifications, lud16: $lud16)';
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
      {String pubkey,
      String walletServicePubkey,
      String relayUrl,
      String secret,
      List<Method> methods,
      List<NotificationType>? notifications,
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
    Object? pubkey = null,
    Object? walletServicePubkey = null,
    Object? relayUrl = null,
    Object? secret = null,
    Object? methods = null,
    Object? notifications = freezed,
    Object? lud16 = freezed,
  }) {
    return _then(WalletConnection(
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
@JsonSerializable()
class ClientConnection extends Connection {
  const ClientConnection(
      {required this.pubkey,
      required this.clientPubkey,
      required this.relayUrl,
      final String? $type})
      : $type = $type ?? 'client',
        super._();
  factory ClientConnection.fromJson(Map<String, dynamic> json) =>
      _$ClientConnectionFromJson(json);

  @override
  final String pubkey;
  final String clientPubkey;
  @override
  final String relayUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientConnectionCopyWith<ClientConnection> get copyWith =>
      _$ClientConnectionCopyWithImpl<ClientConnection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ClientConnectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientConnection &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pubkey, clientPubkey, relayUrl);

  @override
  String toString() {
    return 'Connection.client(pubkey: $pubkey, clientPubkey: $clientPubkey, relayUrl: $relayUrl)';
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
  $Res call({String pubkey, String clientPubkey, String relayUrl});
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
    Object? pubkey = null,
    Object? clientPubkey = null,
    Object? relayUrl = null,
  }) {
    return _then(ClientConnection(
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
