// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tlv_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TlvRecord {
  int get type;
  String get value;

  /// Create a copy of TlvRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TlvRecordCopyWith<TlvRecord> get copyWith =>
      _$TlvRecordCopyWithImpl<TlvRecord>(this as TlvRecord, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TlvRecord &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'TlvRecord(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class $TlvRecordCopyWith<$Res> {
  factory $TlvRecordCopyWith(TlvRecord value, $Res Function(TlvRecord) _then) =
      _$TlvRecordCopyWithImpl;
  @useResult
  $Res call({int type, String value});
}

/// @nodoc
class _$TlvRecordCopyWithImpl<$Res> implements $TlvRecordCopyWith<$Res> {
  _$TlvRecordCopyWithImpl(this._self, this._then);

  final TlvRecord _self;
  final $Res Function(TlvRecord) _then;

  /// Create a copy of TlvRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TlvRecord extends TlvRecord {
  const _TlvRecord({required this.type, required this.value}) : super._();

  @override
  final int type;
  @override
  final String value;

  /// Create a copy of TlvRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TlvRecordCopyWith<_TlvRecord> get copyWith =>
      __$TlvRecordCopyWithImpl<_TlvRecord>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TlvRecord &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @override
  String toString() {
    return 'TlvRecord(type: $type, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$TlvRecordCopyWith<$Res>
    implements $TlvRecordCopyWith<$Res> {
  factory _$TlvRecordCopyWith(
          _TlvRecord value, $Res Function(_TlvRecord) _then) =
      __$TlvRecordCopyWithImpl;
  @override
  @useResult
  $Res call({int type, String value});
}

/// @nodoc
class __$TlvRecordCopyWithImpl<$Res> implements _$TlvRecordCopyWith<$Res> {
  __$TlvRecordCopyWithImpl(this._self, this._then);

  final _TlvRecord _self;
  final $Res Function(_TlvRecord) _then;

  /// Create a copy of TlvRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_TlvRecord(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
