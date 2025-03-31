// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayResult {
  String get preimage;
  BigInt? get feesPaidSat;

  /// Create a copy of PayResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayResultCopyWith<PayResult> get copyWith =>
      _$PayResultCopyWithImpl<PayResult>(this as PayResult, _$identity);

  /// Serializes this PayResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayResult &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, preimage, feesPaidSat);

  @override
  String toString() {
    return 'PayResult(preimage: $preimage, feesPaidSat: $feesPaidSat)';
  }
}

/// @nodoc
abstract mixin class $PayResultCopyWith<$Res> {
  factory $PayResultCopyWith(PayResult value, $Res Function(PayResult) _then) =
      _$PayResultCopyWithImpl;
  @useResult
  $Res call({String preimage, BigInt? feesPaidSat});
}

/// @nodoc
class _$PayResultCopyWithImpl<$Res> implements $PayResultCopyWith<$Res> {
  _$PayResultCopyWithImpl(this._self, this._then);

  final PayResult _self;
  final $Res Function(PayResult) _then;

  /// Create a copy of PayResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preimage = null,
    Object? feesPaidSat = freezed,
  }) {
    return _then(_self.copyWith(
      preimage: null == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String,
      feesPaidSat: freezed == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PayResult extends PayResult {
  const _PayResult({required this.preimage, this.feesPaidSat}) : super._();
  factory _PayResult.fromJson(Map<String, dynamic> json) =>
      _$PayResultFromJson(json);

  @override
  final String preimage;
  @override
  final BigInt? feesPaidSat;

  /// Create a copy of PayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayResultCopyWith<_PayResult> get copyWith =>
      __$PayResultCopyWithImpl<_PayResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PayResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayResult &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, preimage, feesPaidSat);

  @override
  String toString() {
    return 'PayResult(preimage: $preimage, feesPaidSat: $feesPaidSat)';
  }
}

/// @nodoc
abstract mixin class _$PayResultCopyWith<$Res>
    implements $PayResultCopyWith<$Res> {
  factory _$PayResultCopyWith(
          _PayResult value, $Res Function(_PayResult) _then) =
      __$PayResultCopyWithImpl;
  @override
  @useResult
  $Res call({String preimage, BigInt? feesPaidSat});
}

/// @nodoc
class __$PayResultCopyWithImpl<$Res> implements _$PayResultCopyWith<$Res> {
  __$PayResultCopyWithImpl(this._self, this._then);

  final _PayResult _self;
  final $Res Function(_PayResult) _then;

  /// Create a copy of PayResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? preimage = null,
    Object? feesPaidSat = freezed,
  }) {
    return _then(_PayResult(
      preimage: null == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String,
      feesPaidSat: freezed == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as BigInt?,
    ));
  }
}

// dart format on
