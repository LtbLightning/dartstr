// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientMessageModel {
  String get data;

  /// Create a copy of ClientMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientMessageModelCopyWith<ClientMessageModel> get copyWith =>
      _$ClientMessageModelCopyWithImpl<ClientMessageModel>(
          this as ClientMessageModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientMessageModel &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'ClientMessageModel(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ClientMessageModelCopyWith<$Res> {
  factory $ClientMessageModelCopyWith(
          ClientMessageModel value, $Res Function(ClientMessageModel) _then) =
      _$ClientMessageModelCopyWithImpl;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$ClientMessageModelCopyWithImpl<$Res>
    implements $ClientMessageModelCopyWith<$Res> {
  _$ClientMessageModelCopyWithImpl(this._self, this._then);

  final ClientMessageModel _self;
  final $Res Function(ClientMessageModel) _then;

  /// Create a copy of ClientMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ClientMessageModel extends ClientMessageModel {
  const _ClientMessageModel({required this.data}) : super._();

  @override
  final String data;

  /// Create a copy of ClientMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientMessageModelCopyWith<_ClientMessageModel> get copyWith =>
      __$ClientMessageModelCopyWithImpl<_ClientMessageModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientMessageModel &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'ClientMessageModel(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ClientMessageModelCopyWith<$Res>
    implements $ClientMessageModelCopyWith<$Res> {
  factory _$ClientMessageModelCopyWith(
          _ClientMessageModel value, $Res Function(_ClientMessageModel) _then) =
      __$ClientMessageModelCopyWithImpl;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$ClientMessageModelCopyWithImpl<$Res>
    implements _$ClientMessageModelCopyWith<$Res> {
  __$ClientMessageModelCopyWithImpl(this._self, this._then);

  final _ClientMessageModel _self;
  final $Res Function(_ClientMessageModel) _then;

  /// Create a copy of ClientMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ClientMessageModel(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
