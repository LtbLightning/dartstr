// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {
  TransactionType get type;
  String? get invoice;
  String? get description;
  String? get descriptionHash;
  String? get preimage;
  String get paymentHash;
  int get amountSat;
  int get feesPaidSat;
  int get createdAt;
  int? get expiresAt;
  int? get settledAt;
  Map<dynamic, dynamic>? get metadata;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
            (identical(other.type, type) || other.type == type) &&
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
            (identical(other.settledAt, settledAt) ||
                other.settledAt == settledAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      settledAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'Transaction(type: $type, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, settledAt: $settledAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
  @useResult
  $Res call(
      {TransactionType type,
      String? invoice,
      String? description,
      String? descriptionHash,
      String? preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int? expiresAt,
      int? settledAt,
      Map<dynamic, dynamic>? metadata});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? invoice = freezed,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? settledAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
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
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      settledAt: freezed == settledAt
          ? _self.settledAt
          : settledAt // ignore: cast_nullable_to_non_nullable
              as int?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc

class _Transaction extends Transaction {
  const _Transaction(
      {required this.type,
      this.invoice,
      this.description,
      this.descriptionHash,
      this.preimage,
      required this.paymentHash,
      required this.amountSat,
      required this.feesPaidSat,
      required this.createdAt,
      this.expiresAt,
      this.settledAt,
      final Map<dynamic, dynamic>? metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final TransactionType type;
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
  final int? expiresAt;
  @override
  final int? settledAt;
  final Map<dynamic, dynamic>? _metadata;
  @override
  @JsonKey()
  Map<dynamic, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            (identical(other.type, type) || other.type == type) &&
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
            (identical(other.settledAt, settledAt) ||
                other.settledAt == settledAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      settledAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Transaction(type: $type, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, settledAt: $settledAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) _then) =
      __$TransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TransactionType type,
      String? invoice,
      String? description,
      String? descriptionHash,
      String? preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int? expiresAt,
      int? settledAt,
      Map<dynamic, dynamic>? metadata});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? invoice = freezed,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = freezed,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? settledAt = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_Transaction(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
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
              as Map<dynamic, dynamic>?,
    ));
  }
}

// dart format on
