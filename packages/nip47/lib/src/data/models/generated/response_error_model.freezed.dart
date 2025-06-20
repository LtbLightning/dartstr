// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../response_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseErrorModel {
  String get code;
  String get message;

  /// Create a copy of ResponseErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseErrorModelCopyWith<ResponseErrorModel> get copyWith =>
      _$ResponseErrorModelCopyWithImpl<ResponseErrorModel>(
          this as ResponseErrorModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseErrorModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'ResponseErrorModel(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseErrorModelCopyWith<$Res> {
  factory $ResponseErrorModelCopyWith(
          ResponseErrorModel value, $Res Function(ResponseErrorModel) _then) =
      _$ResponseErrorModelCopyWithImpl;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$ResponseErrorModelCopyWithImpl<$Res>
    implements $ResponseErrorModelCopyWith<$Res> {
  _$ResponseErrorModelCopyWithImpl(this._self, this._then);

  final ResponseErrorModel _self;
  final $Res Function(ResponseErrorModel) _then;

  /// Create a copy of ResponseErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ResponseErrorModel extends ResponseErrorModel {
  const _ResponseErrorModel({required this.code, required this.message})
      : super._();

  @override
  final String code;
  @override
  final String message;

  /// Create a copy of ResponseErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseErrorModelCopyWith<_ResponseErrorModel> get copyWith =>
      __$ResponseErrorModelCopyWithImpl<_ResponseErrorModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseErrorModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'ResponseErrorModel(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseErrorModelCopyWith<$Res>
    implements $ResponseErrorModelCopyWith<$Res> {
  factory _$ResponseErrorModelCopyWith(
          _ResponseErrorModel value, $Res Function(_ResponseErrorModel) _then) =
      __$ResponseErrorModelCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$ResponseErrorModelCopyWithImpl<$Res>
    implements _$ResponseErrorModelCopyWith<$Res> {
  __$ResponseErrorModelCopyWithImpl(this._self, this._then);

  final _ResponseErrorModel _self;
  final $Res Function(_ResponseErrorModel) _then;

  /// Create a copy of ResponseErrorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_ResponseErrorModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
