// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

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
      this.network = Network.mainnet,
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
  @JsonKey()
  final Network network;
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
      Network network,
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
    Object? network = null,
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
      network: null == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as Network,
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

class ErrorResponse extends Response {
  const ErrorResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.errorCode,
      this.errorMessage})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
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
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, errorCode, errorMessage);

  @override
  String toString() {
    return 'Response.error(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, errorCode: $errorCode, errorMessage: $errorMessage)';
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

/// @nodoc
mixin _$ResponseEvent {
  Response get response;
  String get eventId;
  List<String> get relays;
  DateTime get createdAt;

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseEventCopyWith<ResponseEvent> get copyWith =>
      _$ResponseEventCopyWithImpl<ResponseEvent>(
          this as ResponseEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseEvent &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other.relays, relays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, eventId,
      const DeepCollectionEquality().hash(relays), createdAt);

  @override
  String toString() {
    return 'ResponseEvent(response: $response, eventId: $eventId, relays: $relays, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ResponseEventCopyWith<$Res> {
  factory $ResponseEventCopyWith(
          ResponseEvent value, $Res Function(ResponseEvent) _then) =
      _$ResponseEventCopyWithImpl;
  @useResult
  $Res call(
      {Response response,
      String eventId,
      List<String> relays,
      DateTime createdAt});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ResponseEventCopyWithImpl<$Res>
    implements $ResponseEventCopyWith<$Res> {
  _$ResponseEventCopyWithImpl(this._self, this._then);

  final ResponseEvent _self;
  final $Res Function(ResponseEvent) _then;

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? eventId = null,
    Object? relays = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc

class _ResponseEvent extends ResponseEvent {
  const _ResponseEvent(this.response,
      {required this.eventId,
      required final List<String> relays,
      required this.createdAt})
      : _relays = relays,
        super._();

  @override
  final Response response;
  @override
  final String eventId;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  @override
  final DateTime createdAt;

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseEventCopyWith<_ResponseEvent> get copyWith =>
      __$ResponseEventCopyWithImpl<_ResponseEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseEvent &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, eventId,
      const DeepCollectionEquality().hash(_relays), createdAt);

  @override
  String toString() {
    return 'ResponseEvent(response: $response, eventId: $eventId, relays: $relays, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$ResponseEventCopyWith<$Res>
    implements $ResponseEventCopyWith<$Res> {
  factory _$ResponseEventCopyWith(
          _ResponseEvent value, $Res Function(_ResponseEvent) _then) =
      __$ResponseEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Response response,
      String eventId,
      List<String> relays,
      DateTime createdAt});

  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$ResponseEventCopyWithImpl<$Res>
    implements _$ResponseEventCopyWith<$Res> {
  __$ResponseEventCopyWithImpl(this._self, this._then);

  final _ResponseEvent _self;
  final $Res Function(_ResponseEvent) _then;

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
    Object? eventId = null,
    Object? relays = null,
    Object? createdAt = null,
  }) {
    return _then(_ResponseEvent(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of ResponseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

// dart format on
