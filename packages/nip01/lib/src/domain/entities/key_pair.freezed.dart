// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyPair {
  String get privateKey;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyPair &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, privateKey);

  @override
  String toString() {
    return 'KeyPair(privateKey: $privateKey)';
  }
}

/// @nodoc
class $KeyPairCopyWith<$Res> {
  $KeyPairCopyWith(KeyPair _, $Res Function(KeyPair) __);
}

/// @nodoc

class _GenerateKeyPair extends KeyPair {
  _GenerateKeyPair() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GenerateKeyPair);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeyPair.generate()';
  }
}

/// @nodoc

class _KeyPairFromPrivateKey extends KeyPair {
  _KeyPairFromPrivateKey({required final String privateKey})
      : super._(privateKey: privateKey);

  /// Create a copy of KeyPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyPairFromPrivateKeyCopyWith<_KeyPairFromPrivateKey> get copyWith =>
      __$KeyPairFromPrivateKeyCopyWithImpl<_KeyPairFromPrivateKey>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyPairFromPrivateKey &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, privateKey);

  @override
  String toString() {
    return 'KeyPair.fromPrivateKey(privateKey: $privateKey)';
  }
}

/// @nodoc
abstract mixin class _$KeyPairFromPrivateKeyCopyWith<$Res>
    implements $KeyPairCopyWith<$Res> {
  factory _$KeyPairFromPrivateKeyCopyWith(_KeyPairFromPrivateKey value,
          $Res Function(_KeyPairFromPrivateKey) _then) =
      __$KeyPairFromPrivateKeyCopyWithImpl;
  @useResult
  $Res call({String privateKey});
}

/// @nodoc
class __$KeyPairFromPrivateKeyCopyWithImpl<$Res>
    implements _$KeyPairFromPrivateKeyCopyWith<$Res> {
  __$KeyPairFromPrivateKeyCopyWithImpl(this._self, this._then);

  final _KeyPairFromPrivateKey _self;
  final $Res Function(_KeyPairFromPrivateKey) _then;

  /// Create a copy of KeyPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? privateKey = null,
  }) {
    return _then(_KeyPairFromPrivateKey(
      privateKey: null == privateKey
          ? _self.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
