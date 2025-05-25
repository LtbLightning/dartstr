// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Request {
  String get clientPubkey;
  String get walletServicePubkey;
  DateTime? get expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestCopyWith<Request> get copyWith =>
      _$RequestCopyWithImpl<Request>(this as Request, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Request &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientPubkey, walletServicePubkey, expiresAt);

  @override
  String toString() {
    return 'Request(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) _then) =
      _$RequestCopyWithImpl;
  @useResult
  $Res call(
      {String clientPubkey, String walletServicePubkey, DateTime? expiresAt});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._self, this._then);

  final Request _self;
  final $Res Function(Request) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class GetInfoRequest extends Request {
  const GetInfoRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoRequestCopyWith<GetInfoRequest> get copyWith =>
      _$GetInfoRequestCopyWithImpl<GetInfoRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientPubkey, walletServicePubkey, expiresAt);

  @override
  String toString() {
    return 'Request.getInfo(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $GetInfoRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $GetInfoRequestCopyWith(
          GetInfoRequest value, $Res Function(GetInfoRequest) _then) =
      _$GetInfoRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey, String walletServicePubkey, DateTime? expiresAt});
}

/// @nodoc
class _$GetInfoRequestCopyWithImpl<$Res>
    implements $GetInfoRequestCopyWith<$Res> {
  _$GetInfoRequestCopyWithImpl(this._self, this._then);

  final GetInfoRequest _self;
  final $Res Function(GetInfoRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? expiresAt = freezed,
  }) {
    return _then(GetInfoRequest(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class GetBalanceRequest extends Request {
  const GetBalanceRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetBalanceRequestCopyWith<GetBalanceRequest> get copyWith =>
      _$GetBalanceRequestCopyWithImpl<GetBalanceRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBalanceRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clientPubkey, walletServicePubkey, expiresAt);

  @override
  String toString() {
    return 'Request.getBalance(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $GetBalanceRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $GetBalanceRequestCopyWith(
          GetBalanceRequest value, $Res Function(GetBalanceRequest) _then) =
      _$GetBalanceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey, String walletServicePubkey, DateTime? expiresAt});
}

/// @nodoc
class _$GetBalanceRequestCopyWithImpl<$Res>
    implements $GetBalanceRequestCopyWith<$Res> {
  _$GetBalanceRequestCopyWithImpl(this._self, this._then);

  final GetBalanceRequest _self;
  final $Res Function(GetBalanceRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? expiresAt = freezed,
  }) {
    return _then(GetBalanceRequest(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class MakeInvoiceRequest extends Request {
  const MakeInvoiceRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required this.amountSat,
      this.description,
      this.descriptionHash,
      this.expiry,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int amountSat;
  final String? description;
  final String? descriptionHash;
  final int? expiry;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeInvoiceRequestCopyWith<MakeInvoiceRequest> get copyWith =>
      _$MakeInvoiceRequestCopyWithImpl<MakeInvoiceRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeInvoiceRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientPubkey,
      walletServicePubkey,
      amountSat,
      description,
      descriptionHash,
      expiry,
      expiresAt);

  @override
  String toString() {
    return 'Request.makeInvoice(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, amountSat: $amountSat, description: $description, descriptionHash: $descriptionHash, expiry: $expiry, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $MakeInvoiceRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $MakeInvoiceRequestCopyWith(
          MakeInvoiceRequest value, $Res Function(MakeInvoiceRequest) _then) =
      _$MakeInvoiceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      int amountSat,
      String? description,
      String? descriptionHash,
      int? expiry,
      DateTime? expiresAt});
}

/// @nodoc
class _$MakeInvoiceRequestCopyWithImpl<$Res>
    implements $MakeInvoiceRequestCopyWith<$Res> {
  _$MakeInvoiceRequestCopyWithImpl(this._self, this._then);

  final MakeInvoiceRequest _self;
  final $Res Function(MakeInvoiceRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? amountSat = null,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? expiry = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(MakeInvoiceRequest(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHash: freezed == descriptionHash
          ? _self.descriptionHash
          : descriptionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _self.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class PayInvoiceRequest extends Request {
  const PayInvoiceRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required this.invoice,
      this.amountSat,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String invoice;
  final int? amountSat;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayInvoiceRequestCopyWith<PayInvoiceRequest> get copyWith =>
      _$PayInvoiceRequestCopyWithImpl<PayInvoiceRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayInvoiceRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientPubkey,
      walletServicePubkey, invoice, amountSat, expiresAt);

  @override
  String toString() {
    return 'Request.payInvoice(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, invoice: $invoice, amountSat: $amountSat, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $PayInvoiceRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $PayInvoiceRequestCopyWith(
          PayInvoiceRequest value, $Res Function(PayInvoiceRequest) _then) =
      _$PayInvoiceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String invoice,
      int? amountSat,
      DateTime? expiresAt});
}

/// @nodoc
class _$PayInvoiceRequestCopyWithImpl<$Res>
    implements $PayInvoiceRequestCopyWith<$Res> {
  _$PayInvoiceRequestCopyWithImpl(this._self, this._then);

  final PayInvoiceRequest _self;
  final $Res Function(PayInvoiceRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? invoice = null,
    Object? amountSat = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(PayInvoiceRequest(
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
      amountSat: freezed == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class LookupInvoiceRequest extends Request {
  const LookupInvoiceRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      this.paymentHash,
      this.invoice,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String? paymentHash;
  final String? invoice;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LookupInvoiceRequestCopyWith<LookupInvoiceRequest> get copyWith =>
      _$LookupInvoiceRequestCopyWithImpl<LookupInvoiceRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LookupInvoiceRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientPubkey,
      walletServicePubkey, paymentHash, invoice, expiresAt);

  @override
  String toString() {
    return 'Request.lookupInvoice(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, paymentHash: $paymentHash, invoice: $invoice, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $LookupInvoiceRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $LookupInvoiceRequestCopyWith(LookupInvoiceRequest value,
          $Res Function(LookupInvoiceRequest) _then) =
      _$LookupInvoiceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String? paymentHash,
      String? invoice,
      DateTime? expiresAt});
}

/// @nodoc
class _$LookupInvoiceRequestCopyWithImpl<$Res>
    implements $LookupInvoiceRequestCopyWith<$Res> {
  _$LookupInvoiceRequestCopyWithImpl(this._self, this._then);

  final LookupInvoiceRequest _self;
  final $Res Function(LookupInvoiceRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? paymentHash = freezed,
    Object? invoice = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(LookupInvoiceRequest(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      paymentHash: freezed == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: freezed == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class ListTransactionsRequest extends Request {
  const ListTransactionsRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      this.from,
      this.until,
      this.limit,
      this.offset,
      this.unpaid = false,
      this.type,
      this.expiresAt})
      : super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int? from;
  final int? until;
  final int? limit;
  final int? offset;
  @JsonKey()
  final bool? unpaid;
  final TransactionType? type;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListTransactionsRequestCopyWith<ListTransactionsRequest> get copyWith =>
      _$ListTransactionsRequestCopyWithImpl<ListTransactionsRequest>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTransactionsRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.unpaid, unpaid) || other.unpaid == unpaid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clientPubkey,
      walletServicePubkey, from, until, limit, offset, unpaid, type, expiresAt);

  @override
  String toString() {
    return 'Request.listTransactions(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, from: $from, until: $until, limit: $limit, offset: $offset, unpaid: $unpaid, type: $type, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $ListTransactionsRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $ListTransactionsRequestCopyWith(ListTransactionsRequest value,
          $Res Function(ListTransactionsRequest) _then) =
      _$ListTransactionsRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      int? from,
      int? until,
      int? limit,
      int? offset,
      bool? unpaid,
      TransactionType? type,
      DateTime? expiresAt});
}

/// @nodoc
class _$ListTransactionsRequestCopyWithImpl<$Res>
    implements $ListTransactionsRequestCopyWith<$Res> {
  _$ListTransactionsRequestCopyWithImpl(this._self, this._then);

  final ListTransactionsRequest _self;
  final $Res Function(ListTransactionsRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? from = freezed,
    Object? until = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? unpaid = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(ListTransactionsRequest(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      until: freezed == until
          ? _self.until
          : until // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      unpaid: freezed == unpaid
          ? _self.unpaid
          : unpaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class CustomRequest extends Request {
  const CustomRequest(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      this.expiresAt})
      : _params = params,
        super._();

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

  @override
  final DateTime? expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomRequestCopyWith<CustomRequest> get copyWith =>
      _$CustomRequestCopyWithImpl<CustomRequest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomRequest &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params),
      expiresAt);

  @override
  String toString() {
    return 'Request.custom(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $CustomRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $CustomRequestCopyWith(
          CustomRequest value, $Res Function(CustomRequest) _then) =
      _$CustomRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime? expiresAt});
}

/// @nodoc
class _$CustomRequestCopyWithImpl<$Res>
    implements $CustomRequestCopyWith<$Res> {
  _$CustomRequestCopyWithImpl(this._self, this._then);

  final CustomRequest _self;
  final $Res Function(CustomRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? expiresAt = freezed,
  }) {
    return _then(CustomRequest(
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
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
