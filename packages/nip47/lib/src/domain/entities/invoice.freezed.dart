// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invoice {
  String? get invoice;
  String? get description;
  String? get descriptionHash;
  String? get preimage;
  String get paymentHash;
  int get amountSat;
  int get feesPaidSat;
  int get createdAt;
  int get expiresAt;
  Map<dynamic, dynamic> get metadata;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<Invoice> get copyWith =>
      _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Invoice &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
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
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Invoice(invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) =
      _$InvoiceCopyWithImpl;
  @useResult
  $Res call(
      {String? invoice,
      String? description,
      String? descriptionHash,
      String? preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int expiresAt,
      Map<dynamic, dynamic> metadata});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = freezed,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
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
      preimage: freezed == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      feesPaidSat: null == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Invoice extends Invoice {
  const _Invoice(
      {this.invoice,
      this.description,
      this.descriptionHash,
      this.preimage,
      required this.paymentHash,
      required this.amountSat,
      required this.feesPaidSat,
      required this.createdAt,
      required this.expiresAt,
      required final Map<dynamic, dynamic> metadata})
      : _metadata = metadata,
        super._();
  factory _Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  final String? invoice;
  @override
  final String? description;
  @override
  final String? descriptionHash;
  @override
  final String? preimage;
  @override
  final String paymentHash;
  @override
  final int amountSat;
  @override
  final int feesPaidSat;
  @override
  final int createdAt;
  @override
  final int expiresAt;
  final Map<dynamic, dynamic> _metadata;
  @override
  Map<dynamic, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InvoiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Invoice &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
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
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Invoice(invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) =
      __$InvoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? invoice,
      String? description,
      String? descriptionHash,
      String? preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int expiresAt,
      Map<dynamic, dynamic> metadata});
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? invoice = freezed,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = null,
    Object? metadata = null,
  }) {
    return _then(_Invoice(
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
      preimage: freezed == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      feesPaidSat: null == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

// dart format on
