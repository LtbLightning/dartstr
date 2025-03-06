// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kind_0_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Kind0ContentModel {
  String get content;

  /// Create a copy of Kind0ContentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Kind0ContentModelCopyWith<Kind0ContentModel> get copyWith =>
      _$Kind0ContentModelCopyWithImpl<Kind0ContentModel>(
          this as Kind0ContentModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Kind0ContentModel &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'Kind0ContentModel(content: $content)';
  }
}

/// @nodoc
abstract mixin class $Kind0ContentModelCopyWith<$Res> {
  factory $Kind0ContentModelCopyWith(
          Kind0ContentModel value, $Res Function(Kind0ContentModel) _then) =
      _$Kind0ContentModelCopyWithImpl;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$Kind0ContentModelCopyWithImpl<$Res>
    implements $Kind0ContentModelCopyWith<$Res> {
  _$Kind0ContentModelCopyWithImpl(this._self, this._then);

  final Kind0ContentModel _self;
  final $Res Function(Kind0ContentModel) _then;

  /// Create a copy of Kind0ContentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Kind0ContentModel extends Kind0ContentModel {
  const _Kind0ContentModel({required this.content}) : super._();

  @override
  final String content;

  /// Create a copy of Kind0ContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Kind0ContentModelCopyWith<_Kind0ContentModel> get copyWith =>
      __$Kind0ContentModelCopyWithImpl<_Kind0ContentModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Kind0ContentModel &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'Kind0ContentModel(content: $content)';
  }
}

/// @nodoc
abstract mixin class _$Kind0ContentModelCopyWith<$Res>
    implements $Kind0ContentModelCopyWith<$Res> {
  factory _$Kind0ContentModelCopyWith(
          _Kind0ContentModel value, $Res Function(_Kind0ContentModel) _then) =
      __$Kind0ContentModelCopyWithImpl;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$Kind0ContentModelCopyWithImpl<$Res>
    implements _$Kind0ContentModelCopyWith<$Res> {
  __$Kind0ContentModelCopyWithImpl(this._self, this._then);

  final _Kind0ContentModel _self;
  final $Res Function(_Kind0ContentModel) _then;

  /// Create a copy of Kind0ContentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
  }) {
    return _then(_Kind0ContentModel(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
