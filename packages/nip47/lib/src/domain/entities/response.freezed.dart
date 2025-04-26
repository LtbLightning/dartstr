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
Response _$ResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'getInfo':
      return GetInfoResponse.fromJson(json);
    case 'getBalance':
      return GetBalanceResponse.fromJson(json);
    case 'makeInvoice':
      return MakeInvoiceResponse.fromJson(json);
    case 'payInvoice':
      return PayInvoiceResponse.fromJson(json);
    case 'multiPayInvoice':
      return MultiPayInvoiceResponse.fromJson(json);
    case 'payKeysend':
      return PayKeysendResponse.fromJson(json);
    case 'multiPayKeysend':
      return MultiPayKeysendResponse.fromJson(json);
    case 'lookupInvoice':
      return LookupInvoiceResponse.fromJson(json);
    case 'listTransactions':
      return ListTransactionsResponse.fromJson(json);
    case 'custom':
      return CustomResponse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Response',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Response {
  String get requestId;
  String get clientPubkey;
  ErrorCode? get error;
  int get createdAt;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<Response> get copyWith =>
      _$ResponseCopyWithImpl<Response>(this as Response, _$identity);

  /// Serializes this Response to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Response &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, clientPubkey, error, createdAt);

  @override
  String toString() {
    return 'Response(requestId: $requestId, clientPubkey: $clientPubkey, error: $error, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) _then) =
      _$ResponseCopyWithImpl;
  @useResult
  $Res call(
      {String requestId, String clientPubkey, ErrorCode? error, int createdAt});
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
    Object? error = freezed,
    Object? createdAt = null,
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
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetInfoResponse implements Response {
  const GetInfoResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.info,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'getInfo';
  factory GetInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetInfoResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final InfoResult? info;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoResponseCopyWith<GetInfoResponse> get copyWith =>
      _$GetInfoResponseCopyWithImpl<GetInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, clientPubkey, info, error, createdAt);

  @override
  String toString() {
    return 'Response.getInfo(requestId: $requestId, clientPubkey: $clientPubkey, info: $info, error: $error, createdAt: $createdAt)';
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
      InfoResult? info,
      ErrorCode? error,
      int createdAt});

  $InfoResultCopyWith<$Res>? get info;
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
    Object? info = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoResult?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoResultCopyWith<$Res>? get info {
    if (_self.info == null) {
      return null;
    }

    return $InfoResultCopyWith<$Res>(_self.info!, (value) {
      return _then(_self.copyWith(info: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class GetBalanceResponse implements Response {
  const GetBalanceResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.balanceSat,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'getBalance';
  factory GetBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final int? balanceSat;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetBalanceResponseCopyWith<GetBalanceResponse> get copyWith =>
      _$GetBalanceResponseCopyWithImpl<GetBalanceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetBalanceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBalanceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.balanceSat, balanceSat) ||
                other.balanceSat == balanceSat) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, balanceSat, error, createdAt);

  @override
  String toString() {
    return 'Response.getBalance(requestId: $requestId, clientPubkey: $clientPubkey, balanceSat: $balanceSat, error: $error, createdAt: $createdAt)';
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
      int? balanceSat,
      ErrorCode? error,
      int createdAt});
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
    Object? balanceSat = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      balanceSat: freezed == balanceSat
          ? _self.balanceSat
          : balanceSat // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MakeInvoiceResponse implements Response {
  const MakeInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.invoice,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'makeInvoice';
  factory MakeInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$MakeInvoiceResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final Invoice? invoice;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeInvoiceResponseCopyWith<MakeInvoiceResponse> get copyWith =>
      _$MakeInvoiceResponseCopyWithImpl<MakeInvoiceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MakeInvoiceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, invoice, error, createdAt);

  @override
  String toString() {
    return 'Response.makeInvoice(requestId: $requestId, clientPubkey: $clientPubkey, invoice: $invoice, error: $error, createdAt: $createdAt)';
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
      Invoice? invoice,
      ErrorCode? error,
      int createdAt});

  $InvoiceCopyWith<$Res>? get invoice;
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
    Object? invoice = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      invoice: freezed == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_self.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_self.invoice!, (value) {
      return _then(_self.copyWith(invoice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class PayInvoiceResponse implements Response {
  const PayInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.payResult,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'payInvoice';
  factory PayInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$PayInvoiceResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final PayResult? payResult;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayInvoiceResponseCopyWith<PayInvoiceResponse> get copyWith =>
      _$PayInvoiceResponseCopyWithImpl<PayInvoiceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayInvoiceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.payResult, payResult) ||
                other.payResult == payResult) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, payResult, error, createdAt);

  @override
  String toString() {
    return 'Response.payInvoice(requestId: $requestId, clientPubkey: $clientPubkey, payResult: $payResult, error: $error, createdAt: $createdAt)';
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
      PayResult? payResult,
      ErrorCode? error,
      int createdAt});

  $PayResultCopyWith<$Res>? get payResult;
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
    Object? payResult = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      payResult: freezed == payResult
          ? _self.payResult
          : payResult // ignore: cast_nullable_to_non_nullable
              as PayResult?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayResultCopyWith<$Res>? get payResult {
    if (_self.payResult == null) {
      return null;
    }

    return $PayResultCopyWith<$Res>(_self.payResult!, (value) {
      return _then(_self.copyWith(payResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MultiPayInvoiceResponse implements Response {
  const MultiPayInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.invoiceId,
      this.payResult,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'multiPayInvoice';
  factory MultiPayInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$MultiPayInvoiceResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final String invoiceId;
  final PayResult? payResult;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayInvoiceResponseCopyWith<MultiPayInvoiceResponse> get copyWith =>
      _$MultiPayInvoiceResponseCopyWithImpl<MultiPayInvoiceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayInvoiceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.payResult, payResult) ||
                other.payResult == payResult) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      invoiceId, payResult, error, createdAt);

  @override
  String toString() {
    return 'Response.multiPayInvoice(requestId: $requestId, clientPubkey: $clientPubkey, invoiceId: $invoiceId, payResult: $payResult, error: $error, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $MultiPayInvoiceResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $MultiPayInvoiceResponseCopyWith(MultiPayInvoiceResponse value,
          $Res Function(MultiPayInvoiceResponse) _then) =
      _$MultiPayInvoiceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String invoiceId,
      PayResult? payResult,
      ErrorCode? error,
      int createdAt});

  $PayResultCopyWith<$Res>? get payResult;
}

/// @nodoc
class _$MultiPayInvoiceResponseCopyWithImpl<$Res>
    implements $MultiPayInvoiceResponseCopyWith<$Res> {
  _$MultiPayInvoiceResponseCopyWithImpl(this._self, this._then);

  final MultiPayInvoiceResponse _self;
  final $Res Function(MultiPayInvoiceResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? invoiceId = null,
    Object? payResult = freezed,
    Object? error = freezed,
    Object? createdAt = null,
  }) {
    return _then(MultiPayInvoiceResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _self.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      payResult: freezed == payResult
          ? _self.payResult
          : payResult // ignore: cast_nullable_to_non_nullable
              as PayResult?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayResultCopyWith<$Res>? get payResult {
    if (_self.payResult == null) {
      return null;
    }

    return $PayResultCopyWith<$Res>(_self.payResult!, (value) {
      return _then(_self.copyWith(payResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class PayKeysendResponse implements Response {
  const PayKeysendResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.payResult,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'payKeysend';
  factory PayKeysendResponse.fromJson(Map<String, dynamic> json) =>
      _$PayKeysendResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final PayResult? payResult;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayKeysendResponseCopyWith<PayKeysendResponse> get copyWith =>
      _$PayKeysendResponseCopyWithImpl<PayKeysendResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayKeysendResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayKeysendResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.payResult, payResult) ||
                other.payResult == payResult) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, payResult, error, createdAt);

  @override
  String toString() {
    return 'Response.payKeysend(requestId: $requestId, clientPubkey: $clientPubkey, payResult: $payResult, error: $error, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PayKeysendResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $PayKeysendResponseCopyWith(
          PayKeysendResponse value, $Res Function(PayKeysendResponse) _then) =
      _$PayKeysendResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      PayResult? payResult,
      ErrorCode? error,
      int createdAt});

  $PayResultCopyWith<$Res>? get payResult;
}

/// @nodoc
class _$PayKeysendResponseCopyWithImpl<$Res>
    implements $PayKeysendResponseCopyWith<$Res> {
  _$PayKeysendResponseCopyWithImpl(this._self, this._then);

  final PayKeysendResponse _self;
  final $Res Function(PayKeysendResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? payResult = freezed,
    Object? error = freezed,
    Object? createdAt = null,
  }) {
    return _then(PayKeysendResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      payResult: freezed == payResult
          ? _self.payResult
          : payResult // ignore: cast_nullable_to_non_nullable
              as PayResult?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayResultCopyWith<$Res>? get payResult {
    if (_self.payResult == null) {
      return null;
    }

    return $PayResultCopyWith<$Res>(_self.payResult!, (value) {
      return _then(_self.copyWith(payResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MultiPayKeysendResponse implements Response {
  const MultiPayKeysendResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.keysendId,
      this.payResult,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'multiPayKeysend';
  factory MultiPayKeysendResponse.fromJson(Map<String, dynamic> json) =>
      _$MultiPayKeysendResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final String keysendId;
  final PayResult? payResult;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayKeysendResponseCopyWith<MultiPayKeysendResponse> get copyWith =>
      _$MultiPayKeysendResponseCopyWithImpl<MultiPayKeysendResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayKeysendResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayKeysendResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.keysendId, keysendId) ||
                other.keysendId == keysendId) &&
            (identical(other.payResult, payResult) ||
                other.payResult == payResult) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      keysendId, payResult, error, createdAt);

  @override
  String toString() {
    return 'Response.multiPayKeysend(requestId: $requestId, clientPubkey: $clientPubkey, keysendId: $keysendId, payResult: $payResult, error: $error, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $MultiPayKeysendResponseCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory $MultiPayKeysendResponseCopyWith(MultiPayKeysendResponse value,
          $Res Function(MultiPayKeysendResponse) _then) =
      _$MultiPayKeysendResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String keysendId,
      PayResult? payResult,
      ErrorCode? error,
      int createdAt});

  $PayResultCopyWith<$Res>? get payResult;
}

/// @nodoc
class _$MultiPayKeysendResponseCopyWithImpl<$Res>
    implements $MultiPayKeysendResponseCopyWith<$Res> {
  _$MultiPayKeysendResponseCopyWithImpl(this._self, this._then);

  final MultiPayKeysendResponse _self;
  final $Res Function(MultiPayKeysendResponse) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? keysendId = null,
    Object? payResult = freezed,
    Object? error = freezed,
    Object? createdAt = null,
  }) {
    return _then(MultiPayKeysendResponse(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      keysendId: null == keysendId
          ? _self.keysendId
          : keysendId // ignore: cast_nullable_to_non_nullable
              as String,
      payResult: freezed == payResult
          ? _self.payResult
          : payResult // ignore: cast_nullable_to_non_nullable
              as PayResult?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayResultCopyWith<$Res>? get payResult {
    if (_self.payResult == null) {
      return null;
    }

    return $PayResultCopyWith<$Res>(_self.payResult!, (value) {
      return _then(_self.copyWith(payResult: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class LookupInvoiceResponse implements Response {
  const LookupInvoiceResponse(
      {required this.requestId,
      required this.clientPubkey,
      this.transaction,
      this.error,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'lookupInvoice';
  factory LookupInvoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$LookupInvoiceResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final Transaction? transaction;
  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LookupInvoiceResponseCopyWith<LookupInvoiceResponse> get copyWith =>
      _$LookupInvoiceResponseCopyWithImpl<LookupInvoiceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LookupInvoiceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LookupInvoiceResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, requestId, clientPubkey, transaction, error, createdAt);

  @override
  String toString() {
    return 'Response.lookupInvoice(requestId: $requestId, clientPubkey: $clientPubkey, transaction: $transaction, error: $error, createdAt: $createdAt)';
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
      Transaction? transaction,
      ErrorCode? error,
      int createdAt});

  $TransactionCopyWith<$Res>? get transaction;
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
    Object? transaction = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      transaction: freezed == transaction
          ? _self.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res>? get transaction {
    if (_self.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_self.transaction!, (value) {
      return _then(_self.copyWith(transaction: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ListTransactionsResponse implements Response {
  const ListTransactionsResponse(
      {required this.requestId,
      required this.clientPubkey,
      final List<Transaction>? transactions,
      this.error,
      required this.createdAt,
      final String? $type})
      : _transactions = transactions,
        $type = $type ?? 'listTransactions';
  factory ListTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListTransactionsResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final List<Transaction>? _transactions;
  List<Transaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListTransactionsResponseCopyWith<ListTransactionsResponse> get copyWith =>
      _$ListTransactionsResponseCopyWithImpl<ListTransactionsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListTransactionsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTransactionsResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, clientPubkey,
      const DeepCollectionEquality().hash(_transactions), error, createdAt);

  @override
  String toString() {
    return 'Response.listTransactions(requestId: $requestId, clientPubkey: $clientPubkey, transactions: $transactions, error: $error, createdAt: $createdAt)';
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
      List<Transaction>? transactions,
      ErrorCode? error,
      int createdAt});
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
    Object? transactions = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      transactions: freezed == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CustomResponse implements Response {
  const CustomResponse(
      {required this.requestId,
      required this.clientPubkey,
      required this.resultType,
      final Map<String, dynamic>? result,
      this.error,
      required this.createdAt,
      final String? $type})
      : _result = result,
        $type = $type ?? 'custom';
  factory CustomResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomResponseFromJson(json);

  @override
  final String requestId;
  @override
  final String clientPubkey;
  final String resultType;
  final Map<String, dynamic>? _result;
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ErrorCode? error;
  @override
  final int createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomResponseCopyWith<CustomResponse> get copyWith =>
      _$CustomResponseCopyWithImpl<CustomResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomResponse &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      resultType,
      const DeepCollectionEquality().hash(_result),
      error,
      createdAt);

  @override
  String toString() {
    return 'Response.custom(requestId: $requestId, clientPubkey: $clientPubkey, resultType: $resultType, result: $result, error: $error, createdAt: $createdAt)';
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
      String resultType,
      Map<String, dynamic>? result,
      ErrorCode? error,
      int createdAt});
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
    Object? resultType = null,
    Object? result = freezed,
    Object? error = freezed,
    Object? createdAt = null,
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
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
