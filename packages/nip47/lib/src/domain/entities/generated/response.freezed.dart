// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Response {
  String get requestId;
  String get clientPubkey;
  String get walletServicePubkey;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<Response> get copyWith =>
      _$ResponseCopyWithImpl<Response>(this as Response, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Response &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, clientPubkey, walletServicePubkey);

  @override
  String toString() {
    return 'Response(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey)';
  }
}

/// @nodoc
abstract mixin class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) _then) =
      _$ResponseCopyWithImpl;
  @useResult
  $Res call(
      {String requestId, String clientPubkey, String walletServicePubkey});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._self, this._then);

  final Response _self;
  final $Res Function(Response) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
  }) {
    return _then(_self.copyWith(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetInfoResponse extends Response {
  const GetInfoResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      this.alias = '',
      this.color = '',
      this.pubkey = '',
      this.network,
      this.blockHeight,
      this.blockHash = '',
      final List<Method> methods = const [],
      final List<String> customMethods = const [],
      final List<NotificationType> notifications = const [],
      final List<String> customNotifications = const []})
      : _methods = methods,
        _customMethods = customMethods,
        _notifications = notifications,
        _customNotifications = customNotifications,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @JsonKey()
  final String alias;
  @JsonKey()
  final String color;
  @JsonKey()
  final String pubkey;
  final Network? network;
  final int? blockHeight;
  @JsonKey()
  final String blockHash;
  final List<Method> _methods;
  @JsonKey()
  List<Method> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _customMethods;
  @JsonKey()
  List<String> get customMethods {
    if (_customMethods is EqualUnmodifiableListView) return _customMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customMethods);
  }

  final List<NotificationType> _notifications;
  @JsonKey()
  List<NotificationType> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<String> _customNotifications;
  @JsonKey()
  List<String> get customNotifications {
    if (_customNotifications is EqualUnmodifiableListView)
      return _customNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customNotifications);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoResponseCopyWith<GetInfoResponse> get copyWith =>
      _$GetInfoResponseCopyWithImpl<GetInfoResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._customMethods, _customMethods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._customNotifications, _customNotifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      alias,
      color,
      pubkey,
      network,
      blockHeight,
      blockHash,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_customMethods),
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(_customNotifications));

  @override
  String toString() {
    return 'Response.getInfo(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, alias: $alias, color: $color, pubkey: $pubkey, network: $network, blockHeight: $blockHeight, blockHash: $blockHash, methods: $methods, customMethods: $customMethods, notifications: $notifications, customNotifications: $customNotifications)';
  }
}

/// @nodoc
abstract mixin class $GetInfoResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $GetInfoResponseCopyWith(
          GetInfoResponse value, $Res Function(GetInfoResponse) _then) =
      _$GetInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String alias,
      String color,
      String pubkey,
      Network? network,
      int? blockHeight,
      String blockHash,
      List<Method> methods,
      List<String> customMethods,
      List<NotificationType> notifications,
      List<String> customNotifications});
}

/// @nodoc
class _$GetInfoResponseCopyWithImpl<$Res>
    implements $GetInfoResponseCopyWith<$Res> {
  _$GetInfoResponseCopyWithImpl(this._self, this._then);

  final GetInfoResponse _self;
  final $Res Function(GetInfoResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? alias = null,
    Object? color = null,
    Object? pubkey = null,
    Object? network = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = null,
    Object? methods = null,
    Object? customMethods = null,
    Object? notifications = null,
    Object? customNotifications = null,
  }) {
    return _then(GetInfoResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _self.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network?,
      blockHeight: freezed == blockHeight
          ? _self.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: null == blockHash
          ? _self.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      customMethods: null == customMethods
          ? _self._customMethods
          : customMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>,
      customNotifications: null == customNotifications
          ? _self._customNotifications
          : customNotifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class GetBalanceResponse extends Response {
  const GetBalanceResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.balanceSat})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int balanceSat;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetBalanceResponseCopyWith<GetBalanceResponse> get copyWith =>
      _$GetBalanceResponseCopyWithImpl<GetBalanceResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBalanceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.balanceSat, balanceSat) ||
                other.balanceSat == balanceSat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, walletServicePubkey, balanceSat);

  @override
  String toString() {
    return 'Response.getBalance(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, balanceSat: $balanceSat)';
  }
}

/// @nodoc
abstract mixin class $GetBalanceResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $GetBalanceResponseCopyWith(
          GetBalanceResponse value, $Res Function(GetBalanceResponse) _then) =
      _$GetBalanceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      int balanceSat});
}

/// @nodoc
class _$GetBalanceResponseCopyWithImpl<$Res>
    implements $GetBalanceResponseCopyWith<$Res> {
  _$GetBalanceResponseCopyWithImpl(this._self, this._then);

  final GetBalanceResponse _self;
  final $Res Function(GetBalanceResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? balanceSat = null,
  }) {
    return _then(GetBalanceResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      balanceSat: null == balanceSat
          ? _self.balanceSat
          : balanceSat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class MakeInvoiceResponse extends Response {
  const MakeInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.invoice,
      this.description,
      this.descriptionHash,
      required this.paymentHash,
      required this.amountSat,
      required this.createdAt,
      this.expiresAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String invoice;
  final String? description;
  final String? descriptionHash;
  final String paymentHash;
  final int amountSat;
  final int createdAt;
  final int? expiresAt;
  final Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeInvoiceResponseCopyWith<MakeInvoiceResponse> get copyWith =>
      _$MakeInvoiceResponseCopyWithImpl<MakeInvoiceResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      invoice,
      description,
      descriptionHash,
      paymentHash,
      amountSat,
      createdAt,
      expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Response.makeInvoice(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, paymentHash: $paymentHash, amountSat: $amountSat, createdAt: $createdAt, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $MakeInvoiceResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $MakeInvoiceResponseCopyWith(
          MakeInvoiceResponse value, $Res Function(MakeInvoiceResponse) _then) =
      _$MakeInvoiceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String invoice,
      String? description,
      String? descriptionHash,
      String paymentHash,
      int amountSat,
      int createdAt,
      int? expiresAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$MakeInvoiceResponseCopyWithImpl<$Res>
    implements $MakeInvoiceResponseCopyWith<$Res> {
  _$MakeInvoiceResponseCopyWithImpl(this._self, this._then);

  final MakeInvoiceResponse _self;
  final $Res Function(MakeInvoiceResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? invoice = null,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(MakeInvoiceResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      invoice: null == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHash: freezed == descriptionHash
          ? _self.descriptionHash
          : descriptionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class PayInvoiceResponse extends Response {
  const PayInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.preimage,
      this.feesPaidSat})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String preimage;
  final int? feesPaidSat;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayInvoiceResponseCopyWith<PayInvoiceResponse> get copyWith =>
      _$PayInvoiceResponseCopyWithImpl<PayInvoiceResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, preimage, feesPaidSat);

  @override
  String toString() {
    return 'Response.payInvoice(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, preimage: $preimage, feesPaidSat: $feesPaidSat)';
  }
}

/// @nodoc
abstract mixin class $PayInvoiceResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $PayInvoiceResponseCopyWith(
          PayInvoiceResponse value, $Res Function(PayInvoiceResponse) _then) =
      _$PayInvoiceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String preimage,
      int? feesPaidSat});
}

/// @nodoc
class _$PayInvoiceResponseCopyWithImpl<$Res>
    implements $PayInvoiceResponseCopyWith<$Res> {
  _$PayInvoiceResponseCopyWithImpl(this._self, this._then);

  final PayInvoiceResponse _self;
  final $Res Function(PayInvoiceResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? preimage = null,
    Object? feesPaidSat = freezed,
  }) {
    return _then(PayInvoiceResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      preimage: null == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String,
      feesPaidSat: freezed == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class LookupInvoiceResponse extends Response {
  const LookupInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.type,
      this.invoice,
      this.description,
      this.descriptionHash,
      required this.paymentHash,
      required this.amountSat,
      this.feesPaidSat,
      required this.createdAt,
      this.expiresAt,
      this.settledAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String type;
  final String? invoice;
  final String? description;
  final String? descriptionHash;
  final String paymentHash;
  final int amountSat;
  final int? feesPaidSat;
  final int createdAt;
  final int? expiresAt;
  final int? settledAt;
  final Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LookupInvoiceResponseCopyWith<LookupInvoiceResponse> get copyWith =>
      _$LookupInvoiceResponseCopyWithImpl<LookupInvoiceResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LookupInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.settledAt, settledAt) ||
                other.settledAt == settledAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      type,
      invoice,
      description,
      descriptionHash,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      settledAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Response.lookupInvoice(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, type: $type, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, settledAt: $settledAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $LookupInvoiceResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $LookupInvoiceResponseCopyWith(LookupInvoiceResponse value,
          $Res Function(LookupInvoiceResponse) _then) =
      _$LookupInvoiceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String type,
      String? invoice,
      String? description,
      String? descriptionHash,
      String paymentHash,
      int amountSat,
      int? feesPaidSat,
      int createdAt,
      int? expiresAt,
      int? settledAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$LookupInvoiceResponseCopyWithImpl<$Res>
    implements $LookupInvoiceResponseCopyWith<$Res> {
  _$LookupInvoiceResponseCopyWithImpl(this._self, this._then);

  final LookupInvoiceResponse _self;
  final $Res Function(LookupInvoiceResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? type = null,
    Object? invoice = freezed,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? settledAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(LookupInvoiceResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      invoice: freezed == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHash: freezed == descriptionHash
          ? _self.descriptionHash
          : descriptionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      feesPaidSat: freezed == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      settledAt: freezed == settledAt
          ? _self.settledAt
          : settledAt // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class ListTransactionsResponse extends Response {
  const ListTransactionsResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      final List<Transaction> transactions = const []})
      : _transactions = transactions,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final List<Transaction> _transactions;
  @JsonKey()
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListTransactionsResponseCopyWith<ListTransactionsResponse> get copyWith =>
      _$ListTransactionsResponseCopyWithImpl<ListTransactionsResponse>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTransactionsResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, const DeepCollectionEquality().hash(_transactions));

  @override
  String toString() {
    return 'Response.listTransactions(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, transactions: $transactions)';
  }
}

/// @nodoc
abstract mixin class $ListTransactionsResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $ListTransactionsResponseCopyWith(ListTransactionsResponse value,
          $Res Function(ListTransactionsResponse) _then) =
      _$ListTransactionsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      List<Transaction> transactions});
}

/// @nodoc
class _$ListTransactionsResponseCopyWithImpl<$Res>
    implements $ListTransactionsResponseCopyWith<$Res> {
  _$ListTransactionsResponseCopyWithImpl(this._self, this._then);

  final ListTransactionsResponse _self;
  final $Res Function(ListTransactionsResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? transactions = null,
  }) {
    return _then(ListTransactionsResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class CustomResponse extends Response {
  const CustomResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params})
      : _params = params,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String method;
  final Map<String, dynamic> _params;
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomResponseCopyWith<CustomResponse> get copyWith =>
      _$CustomResponseCopyWithImpl<CustomResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params));

  @override
  String toString() {
    return 'Response.custom(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params)';
  }
}

/// @nodoc
abstract mixin class $CustomResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $CustomResponseCopyWith(
          CustomResponse value, $Res Function(CustomResponse) _then) =
      _$CustomResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params});
}

/// @nodoc
class _$CustomResponseCopyWithImpl<$Res>
    implements $CustomResponseCopyWith<$Res> {
  _$CustomResponseCopyWithImpl(this._self, this._then);

  final CustomResponse _self;
  final $Res Function(CustomResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
  }) {
    return _then(CustomResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class ErrorResponse extends Response {
  const ErrorResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required this.errorCode,
      this.errorMessage})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String method;
  final ErrorCode errorCode;
  final String? errorMessage;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      _$ErrorResponseCopyWithImpl<ErrorResponse>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, method, errorCode, errorMessage);

  @override
  String toString() {
    return 'Response.error(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, errorCode: $errorCode, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ErrorResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) _then) =
      _$ErrorResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String method,
      ErrorCode errorCode,
      String? errorMessage});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._self, this._then);

  final ErrorResponse _self;
  final $Res Function(ErrorResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? errorCode = null,
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
