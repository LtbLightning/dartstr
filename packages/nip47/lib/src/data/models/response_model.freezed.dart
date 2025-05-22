// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel {
  String get requestId;
  String get clientPubkey;
  String get walletServicePubkey;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      _$ResponseModelCopyWithImpl<ResponseModel>(
          this as ResponseModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModel &&
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
    return 'ResponseModel(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) _then) =
      _$ResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {String requestId, String clientPubkey, String walletServicePubkey});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel _self;
  final $Res Function(ResponseModel) _then;

  /// Create a copy of ResponseModel
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

class GetInfoResponseModel extends ResponseModel {
  const GetInfoResponseModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      this.alias = '',
      this.color = '',
      this.pubkey = '',
      this.network = 'mainnet',
      this.blockHeight,
      this.blockHash = '',
      final List<String> methods = const [],
      final List<String> notifications = const []})
      : _methods = methods,
        _notifications = notifications,
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
  final String network;
  final int? blockHeight;
  @JsonKey()
  final String blockHash;
  final List<String> _methods;
  @JsonKey()
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<String> _notifications;
  @JsonKey()
  List<String> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoResponseModelCopyWith<GetInfoResponseModel> get copyWith =>
      _$GetInfoResponseModelCopyWithImpl<GetInfoResponseModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoResponseModel &&
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
                .equals(other._notifications, _notifications));
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
      const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'ResponseModel.getInfo(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, alias: $alias, color: $color, pubkey: $pubkey, network: $network, blockHeight: $blockHeight, blockHash: $blockHash, methods: $methods, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $GetInfoResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $GetInfoResponseModelCopyWith(GetInfoResponseModel value,
          $Res Function(GetInfoResponseModel) _then) =
      _$GetInfoResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String alias,
      String color,
      String pubkey,
      String network,
      int? blockHeight,
      String blockHash,
      List<String> methods,
      List<String> notifications});
}

/// @nodoc
class _$GetInfoResponseModelCopyWithImpl<$Res>
    implements $GetInfoResponseModelCopyWith<$Res> {
  _$GetInfoResponseModelCopyWithImpl(this._self, this._then);

  final GetInfoResponseModel _self;
  final $Res Function(GetInfoResponseModel) _then;

  /// Create a copy of ResponseModel
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
    Object? notifications = null,
  }) {
    return _then(GetInfoResponseModel(
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
              as String,
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
              as List<String>,
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class GetBalanceResponseModel extends ResponseModel {
  const GetBalanceResponseModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.balanceMsat})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int balanceMsat;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetBalanceResponseModelCopyWith<GetBalanceResponseModel> get copyWith =>
      _$GetBalanceResponseModelCopyWithImpl<GetBalanceResponseModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBalanceResponseModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.balanceMsat, balanceMsat) ||
                other.balanceMsat == balanceMsat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, walletServicePubkey, balanceMsat);

  @override
  String toString() {
    return 'ResponseModel.getBalance(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, balanceMsat: $balanceMsat)';
  }
}

/// @nodoc
abstract mixin class $GetBalanceResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $GetBalanceResponseModelCopyWith(GetBalanceResponseModel value,
          $Res Function(GetBalanceResponseModel) _then) =
      _$GetBalanceResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      int balanceMsat});
}

/// @nodoc
class _$GetBalanceResponseModelCopyWithImpl<$Res>
    implements $GetBalanceResponseModelCopyWith<$Res> {
  _$GetBalanceResponseModelCopyWithImpl(this._self, this._then);

  final GetBalanceResponseModel _self;
  final $Res Function(GetBalanceResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? balanceMsat = null,
  }) {
    return _then(GetBalanceResponseModel(
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
      balanceMsat: null == balanceMsat
          ? _self.balanceMsat
          : balanceMsat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class PayInvoiceResponseModel extends ResponseModel {
  const PayInvoiceResponseModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.preimage,
      this.feesPaidMsat})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String preimage;
  final int? feesPaidMsat;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayInvoiceResponseModelCopyWith<PayInvoiceResponseModel> get copyWith =>
      _$PayInvoiceResponseModelCopyWithImpl<PayInvoiceResponseModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayInvoiceResponseModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.feesPaidMsat, feesPaidMsat) ||
                other.feesPaidMsat == feesPaidMsat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, preimage, feesPaidMsat);

  @override
  String toString() {
    return 'ResponseModel.payInvoice(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, preimage: $preimage, feesPaidMsat: $feesPaidMsat)';
  }
}

/// @nodoc
abstract mixin class $PayInvoiceResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $PayInvoiceResponseModelCopyWith(PayInvoiceResponseModel value,
          $Res Function(PayInvoiceResponseModel) _then) =
      _$PayInvoiceResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String preimage,
      int? feesPaidMsat});
}

/// @nodoc
class _$PayInvoiceResponseModelCopyWithImpl<$Res>
    implements $PayInvoiceResponseModelCopyWith<$Res> {
  _$PayInvoiceResponseModelCopyWithImpl(this._self, this._then);

  final PayInvoiceResponseModel _self;
  final $Res Function(PayInvoiceResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? preimage = null,
    Object? feesPaidMsat = freezed,
  }) {
    return _then(PayInvoiceResponseModel(
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
      feesPaidMsat: freezed == feesPaidMsat
          ? _self.feesPaidMsat
          : feesPaidMsat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class ErrorResponseModel extends ResponseModel {
  const ErrorResponseModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.resultType,
      required this.errorCode,
      required this.errorMessage})
      : super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String resultType;
  final String errorCode;
  final String errorMessage;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorResponseModelCopyWith<ErrorResponseModel> get copyWith =>
      _$ErrorResponseModelCopyWithImpl<ErrorResponseModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorResponseModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      walletServicePubkey, resultType, errorCode, errorMessage);

  @override
  String toString() {
    return 'ResponseModel.error(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, resultType: $resultType, errorCode: $errorCode, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ErrorResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $ErrorResponseModelCopyWith(
          ErrorResponseModel value, $Res Function(ErrorResponseModel) _then) =
      _$ErrorResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String resultType,
      String errorCode,
      String errorMessage});
}

/// @nodoc
class _$ErrorResponseModelCopyWithImpl<$Res>
    implements $ErrorResponseModelCopyWith<$Res> {
  _$ErrorResponseModelCopyWithImpl(this._self, this._then);

  final ErrorResponseModel _self;
  final $Res Function(ErrorResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? resultType = null,
    Object? errorCode = null,
    Object? errorMessage = null,
  }) {
    return _then(ErrorResponseModel(
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
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
