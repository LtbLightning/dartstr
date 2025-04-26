// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_pay_invoice_request_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultiPayInvoiceRequestInvoice {
  String? get id;
  String get invoice;
  int? get amountSat;

  /// Create a copy of MultiPayInvoiceRequestInvoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayInvoiceRequestInvoiceCopyWith<MultiPayInvoiceRequestInvoice>
      get copyWith => _$MultiPayInvoiceRequestInvoiceCopyWithImpl<
              MultiPayInvoiceRequestInvoice>(
          this as MultiPayInvoiceRequestInvoice, _$identity);

  /// Serializes this MultiPayInvoiceRequestInvoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayInvoiceRequestInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoice, amountSat);

  @override
  String toString() {
    return 'MultiPayInvoiceRequestInvoice(id: $id, invoice: $invoice, amountSat: $amountSat)';
  }
}

/// @nodoc
abstract mixin class $MultiPayInvoiceRequestInvoiceCopyWith<$Res> {
  factory $MultiPayInvoiceRequestInvoiceCopyWith(
          MultiPayInvoiceRequestInvoice value,
          $Res Function(MultiPayInvoiceRequestInvoice) _then) =
      _$MultiPayInvoiceRequestInvoiceCopyWithImpl;
  @useResult
  $Res call({String? id, String invoice, int? amountSat});
}

/// @nodoc
class _$MultiPayInvoiceRequestInvoiceCopyWithImpl<$Res>
    implements $MultiPayInvoiceRequestInvoiceCopyWith<$Res> {
  _$MultiPayInvoiceRequestInvoiceCopyWithImpl(this._self, this._then);

  final MultiPayInvoiceRequestInvoice _self;
  final $Res Function(MultiPayInvoiceRequestInvoice) _then;

  /// Create a copy of MultiPayInvoiceRequestInvoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? invoice = null,
    Object? amountSat = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: null == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: freezed == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MultiPayInvoiceRequestInvoice extends MultiPayInvoiceRequestInvoice {
  const _MultiPayInvoiceRequestInvoice(
      {this.id, required this.invoice, this.amountSat})
      : super._();
  factory _MultiPayInvoiceRequestInvoice.fromJson(Map<String, dynamic> json) =>
      _$MultiPayInvoiceRequestInvoiceFromJson(json);

  @override
  final String? id;
  @override
  final String invoice;
  @override
  final int? amountSat;

  /// Create a copy of MultiPayInvoiceRequestInvoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultiPayInvoiceRequestInvoiceCopyWith<_MultiPayInvoiceRequestInvoice>
      get copyWith => __$MultiPayInvoiceRequestInvoiceCopyWithImpl<
          _MultiPayInvoiceRequestInvoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayInvoiceRequestInvoiceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiPayInvoiceRequestInvoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, invoice, amountSat);

  @override
  String toString() {
    return 'MultiPayInvoiceRequestInvoice(id: $id, invoice: $invoice, amountSat: $amountSat)';
  }
}

/// @nodoc
abstract mixin class _$MultiPayInvoiceRequestInvoiceCopyWith<$Res>
    implements $MultiPayInvoiceRequestInvoiceCopyWith<$Res> {
  factory _$MultiPayInvoiceRequestInvoiceCopyWith(
          _MultiPayInvoiceRequestInvoice value,
          $Res Function(_MultiPayInvoiceRequestInvoice) _then) =
      __$MultiPayInvoiceRequestInvoiceCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, String invoice, int? amountSat});
}

/// @nodoc
class __$MultiPayInvoiceRequestInvoiceCopyWithImpl<$Res>
    implements _$MultiPayInvoiceRequestInvoiceCopyWith<$Res> {
  __$MultiPayInvoiceRequestInvoiceCopyWithImpl(this._self, this._then);

  final _MultiPayInvoiceRequestInvoice _self;
  final $Res Function(_MultiPayInvoiceRequestInvoice) _then;

  /// Create a copy of MultiPayInvoiceRequestInvoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? invoice = null,
    Object? amountSat = freezed,
  }) {
    return _then(_MultiPayInvoiceRequestInvoice(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: null == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: freezed == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
