// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Request _$RequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'getInfo':
      return GetInfoRequest.fromJson(json);
    case 'getBalance':
      return GetBalanceRequest.fromJson(json);
    case 'makeInvoice':
      return MakeInvoiceRequest.fromJson(json);
    case 'payInvoice':
      return PayInvoiceRequest.fromJson(json);
    case 'multiPayInvoice':
      return MultiPayInvoiceRequest.fromJson(json);
    case 'payKeysend':
      return PayKeysendRequest.fromJson(json);
    case 'multiPayKeysend':
      return MultiPayKeysendRequest.fromJson(json);
    case 'lookupInvoice':
      return LookupInvoiceRequest.fromJson(json);
    case 'listTransactions':
      return ListTransactionsRequest.fromJson(json);
    case 'custom':
      return CustomRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Request',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Request {
  String get id;
  String get clientPubkey;
  String get walletServicePubkey;
  int get createdAt;
  int? get expiresAt;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestCopyWith<Request> get copyWith =>
      _$RequestCopyWithImpl<Request>(this as Request, _$identity);

  /// Serializes this Request to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Request &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, clientPubkey, walletServicePubkey, createdAt, expiresAt);

  @override
  String toString() {
    return 'Request(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) _then) =
      _$RequestCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetInfoRequest extends Request {
  const GetInfoRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'getInfo',
        super._();
  factory GetInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$GetInfoRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoRequestCopyWith<GetInfoRequest> get copyWith =>
      _$GetInfoRequestCopyWithImpl<GetInfoRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetInfoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, clientPubkey, walletServicePubkey, createdAt, expiresAt);

  @override
  String toString() {
    return 'Request.getInfo(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(GetInfoRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetBalanceRequest extends Request {
  const GetBalanceRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'getBalance',
        super._();
  factory GetBalanceRequest.fromJson(Map<String, dynamic> json) =>
      _$GetBalanceRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetBalanceRequestCopyWith<GetBalanceRequest> get copyWith =>
      _$GetBalanceRequestCopyWithImpl<GetBalanceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetBalanceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBalanceRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, clientPubkey, walletServicePubkey, createdAt, expiresAt);

  @override
  String toString() {
    return 'Request.getBalance(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(GetBalanceRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MakeInvoiceRequest extends Request {
  const MakeInvoiceRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.amountSat,
      this.description,
      this.descriptionHash,
      this.expiry,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'makeInvoice',
        super._();
  factory MakeInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$MakeInvoiceRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int amountSat;
  final String? description;
  final String? descriptionHash;
  final int? expiry;
  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MakeInvoiceRequestCopyWith<MakeInvoiceRequest> get copyWith =>
      _$MakeInvoiceRequestCopyWithImpl<MakeInvoiceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MakeInvoiceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeInvoiceRequest &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      amountSat,
      description,
      descriptionHash,
      expiry,
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.makeInvoice(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, amountSat: $amountSat, description: $description, descriptionHash: $descriptionHash, expiry: $expiry, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int amountSat,
      String? description,
      String? descriptionHash,
      int? expiry,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? amountSat = null,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? expiry = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(MakeInvoiceRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PayInvoiceRequest extends Request {
  const PayInvoiceRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.invoice,
      this.amountSat,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'payInvoice',
        super._();
  factory PayInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$PayInvoiceRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String invoice;
  final int? amountSat;
  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayInvoiceRequestCopyWith<PayInvoiceRequest> get copyWith =>
      _$PayInvoiceRequestCopyWithImpl<PayInvoiceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayInvoiceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayInvoiceRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientPubkey,
      walletServicePubkey, invoice, amountSat, createdAt, expiresAt);

  @override
  String toString() {
    return 'Request.payInvoice(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, invoice: $invoice, amountSat: $amountSat, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      String invoice,
      int? amountSat,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? invoice = null,
    Object? amountSat = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(PayInvoiceRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      amountSat: freezed == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MultiPayInvoiceRequest extends Request {
  const MultiPayInvoiceRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required final List<MultiPayInvoiceRequestInvoice> invoices,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : _invoices = invoices,
        $type = $type ?? 'multiPayInvoice',
        super._();
  factory MultiPayInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$MultiPayInvoiceRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final List<MultiPayInvoiceRequestInvoice> _invoices;
  List<MultiPayInvoiceRequestInvoice> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayInvoiceRequestCopyWith<MultiPayInvoiceRequest> get copyWith =>
      _$MultiPayInvoiceRequestCopyWithImpl<MultiPayInvoiceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayInvoiceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayInvoiceRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_invoices),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.multiPayInvoice(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, invoices: $invoices, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $MultiPayInvoiceRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $MultiPayInvoiceRequestCopyWith(MultiPayInvoiceRequest value,
          $Res Function(MultiPayInvoiceRequest) _then) =
      _$MultiPayInvoiceRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      List<MultiPayInvoiceRequestInvoice> invoices,
      int createdAt,
      int? expiresAt});
}

/// @nodoc
class _$MultiPayInvoiceRequestCopyWithImpl<$Res>
    implements $MultiPayInvoiceRequestCopyWith<$Res> {
  _$MultiPayInvoiceRequestCopyWithImpl(this._self, this._then);

  final MultiPayInvoiceRequest _self;
  final $Res Function(MultiPayInvoiceRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? invoices = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(MultiPayInvoiceRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      invoices: null == invoices
          ? _self._invoices
          : invoices // ignore: cast_nullable_to_non_nullable
              as List<MultiPayInvoiceRequestInvoice>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PayKeysendRequest extends Request {
  const PayKeysendRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.amountSat,
      required this.pubkey,
      this.preimage,
      final List<TlvRecord>? tlvRecords,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : _tlvRecords = tlvRecords,
        $type = $type ?? 'payKeysend',
        super._();
  factory PayKeysendRequest.fromJson(Map<String, dynamic> json) =>
      _$PayKeysendRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final int amountSat;
  final String pubkey;
  final String? preimage;
  final List<TlvRecord>? _tlvRecords;
  List<TlvRecord>? get tlvRecords {
    final value = _tlvRecords;
    if (value == null) return null;
    if (_tlvRecords is EqualUnmodifiableListView) return _tlvRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayKeysendRequestCopyWith<PayKeysendRequest> get copyWith =>
      _$PayKeysendRequestCopyWithImpl<PayKeysendRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayKeysendRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayKeysendRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            const DeepCollectionEquality()
                .equals(other._tlvRecords, _tlvRecords) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      amountSat,
      pubkey,
      preimage,
      const DeepCollectionEquality().hash(_tlvRecords),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.payKeysend(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, amountSat: $amountSat, pubkey: $pubkey, preimage: $preimage, tlvRecords: $tlvRecords, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $PayKeysendRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $PayKeysendRequestCopyWith(
          PayKeysendRequest value, $Res Function(PayKeysendRequest) _then) =
      _$PayKeysendRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int amountSat,
      String pubkey,
      String? preimage,
      List<TlvRecord>? tlvRecords,
      int createdAt,
      int? expiresAt});
}

/// @nodoc
class _$PayKeysendRequestCopyWithImpl<$Res>
    implements $PayKeysendRequestCopyWith<$Res> {
  _$PayKeysendRequestCopyWithImpl(this._self, this._then);

  final PayKeysendRequest _self;
  final $Res Function(PayKeysendRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? amountSat = null,
    Object? pubkey = null,
    Object? preimage = freezed,
    Object? tlvRecords = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(PayKeysendRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      preimage: freezed == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String?,
      tlvRecords: freezed == tlvRecords
          ? _self._tlvRecords
          : tlvRecords // ignore: cast_nullable_to_non_nullable
              as List<TlvRecord>?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class MultiPayKeysendRequest extends Request {
  const MultiPayKeysendRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required final List<MultiPayKeysendRequestKeysend> keysends,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : _keysends = keysends,
        $type = $type ?? 'multiPayKeysend',
        super._();
  factory MultiPayKeysendRequest.fromJson(Map<String, dynamic> json) =>
      _$MultiPayKeysendRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final List<MultiPayKeysendRequestKeysend> _keysends;
  List<MultiPayKeysendRequestKeysend> get keysends {
    if (_keysends is EqualUnmodifiableListView) return _keysends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keysends);
  }

  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayKeysendRequestCopyWith<MultiPayKeysendRequest> get copyWith =>
      _$MultiPayKeysendRequestCopyWithImpl<MultiPayKeysendRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayKeysendRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayKeysendRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._keysends, _keysends) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_keysends),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.multiPayKeysend(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, keysends: $keysends, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $MultiPayKeysendRequestCopyWith<$Res>
    implements $RequestCopyWith<$Res> {
  factory $MultiPayKeysendRequestCopyWith(MultiPayKeysendRequest value,
          $Res Function(MultiPayKeysendRequest) _then) =
      _$MultiPayKeysendRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      List<MultiPayKeysendRequestKeysend> keysends,
      int createdAt,
      int? expiresAt});
}

/// @nodoc
class _$MultiPayKeysendRequestCopyWithImpl<$Res>
    implements $MultiPayKeysendRequestCopyWith<$Res> {
  _$MultiPayKeysendRequestCopyWithImpl(this._self, this._then);

  final MultiPayKeysendRequest _self;
  final $Res Function(MultiPayKeysendRequest) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? keysends = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(MultiPayKeysendRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      keysends: null == keysends
          ? _self._keysends
          : keysends // ignore: cast_nullable_to_non_nullable
              as List<MultiPayKeysendRequestKeysend>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class LookupInvoiceRequest extends Request {
  const LookupInvoiceRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      this.paymentHash,
      this.invoice,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'lookupInvoice',
        super._();
  factory LookupInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$LookupInvoiceRequestFromJson(json);

  @override
  final String id;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  final String? paymentHash;
  final String? invoice;
  @override
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LookupInvoiceRequestCopyWith<LookupInvoiceRequest> get copyWith =>
      _$LookupInvoiceRequestCopyWithImpl<LookupInvoiceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LookupInvoiceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LookupInvoiceRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientPubkey,
      walletServicePubkey, paymentHash, invoice, createdAt, expiresAt);

  @override
  String toString() {
    return 'Request.lookupInvoice(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, paymentHash: $paymentHash, invoice: $invoice, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      String? paymentHash,
      String? invoice,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? paymentHash = freezed,
    Object? invoice = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(LookupInvoiceRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ListTransactionsRequest extends Request {
  const ListTransactionsRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      this.from,
      this.until,
      this.limit,
      this.offset,
      this.unpaid = false,
      this.type,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : $type = $type ?? 'listTransactions',
        super._();
  factory ListTransactionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ListTransactionsRequestFromJson(json);

  @override
  final String id;
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
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListTransactionsRequestCopyWith<ListTransactionsRequest> get copyWith =>
      _$ListTransactionsRequestCopyWithImpl<ListTransactionsRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListTransactionsRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTransactionsRequest &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      from,
      until,
      limit,
      offset,
      unpaid,
      type,
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.listTransactions(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, from: $from, until: $until, limit: $limit, offset: $offset, unpaid: $unpaid, type: $type, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      int? from,
      int? until,
      int? limit,
      int? offset,
      bool? unpaid,
      TransactionType? type,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? from = freezed,
    Object? until = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? unpaid = freezed,
    Object? type = freezed,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(ListTransactionsRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CustomRequest extends Request {
  const CustomRequest(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      required this.createdAt,
      this.expiresAt,
      final String? $type})
      : _params = params,
        $type = $type ?? 'custom',
        super._();
  factory CustomRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomRequestFromJson(json);

  @override
  final String id;
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
  final int createdAt;
  @override
  final int? expiresAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomRequestCopyWith<CustomRequest> get copyWith =>
      _$CustomRequestCopyWithImpl<CustomRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'Request.custom(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, createdAt: $createdAt, expiresAt: $expiresAt)';
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
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      int createdAt,
      int? expiresAt});
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
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(CustomRequest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
