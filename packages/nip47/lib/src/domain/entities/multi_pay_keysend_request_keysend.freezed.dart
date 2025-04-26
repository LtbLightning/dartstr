// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_pay_keysend_request_keysend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultiPayKeysendRequestKeysend {
  String? get id;
  String get pubkey;
  int get amountSat;
  String? get preimage;
  List<TlvRecord>? get tlvRecords;

  /// Create a copy of MultiPayKeysendRequestKeysend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultiPayKeysendRequestKeysendCopyWith<MultiPayKeysendRequestKeysend>
      get copyWith => _$MultiPayKeysendRequestKeysendCopyWithImpl<
              MultiPayKeysendRequestKeysend>(
          this as MultiPayKeysendRequestKeysend, _$identity);

  /// Serializes this MultiPayKeysendRequestKeysend to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiPayKeysendRequestKeysend &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            const DeepCollectionEquality()
                .equals(other.tlvRecords, tlvRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, pubkey, amountSat, preimage,
      const DeepCollectionEquality().hash(tlvRecords));

  @override
  String toString() {
    return 'MultiPayKeysendRequestKeysend(id: $id, pubkey: $pubkey, amountSat: $amountSat, preimage: $preimage, tlvRecords: $tlvRecords)';
  }
}

/// @nodoc
abstract mixin class $MultiPayKeysendRequestKeysendCopyWith<$Res> {
  factory $MultiPayKeysendRequestKeysendCopyWith(
          MultiPayKeysendRequestKeysend value,
          $Res Function(MultiPayKeysendRequestKeysend) _then) =
      _$MultiPayKeysendRequestKeysendCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String pubkey,
      int amountSat,
      String? preimage,
      List<TlvRecord>? tlvRecords});
}

/// @nodoc
class _$MultiPayKeysendRequestKeysendCopyWithImpl<$Res>
    implements $MultiPayKeysendRequestKeysendCopyWith<$Res> {
  _$MultiPayKeysendRequestKeysendCopyWithImpl(this._self, this._then);

  final MultiPayKeysendRequestKeysend _self;
  final $Res Function(MultiPayKeysendRequestKeysend) _then;

  /// Create a copy of MultiPayKeysendRequestKeysend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pubkey = null,
    Object? amountSat = null,
    Object? preimage = freezed,
    Object? tlvRecords = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      preimage: freezed == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String?,
      tlvRecords: freezed == tlvRecords
          ? _self.tlvRecords
          : tlvRecords // ignore: cast_nullable_to_non_nullable
              as List<TlvRecord>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MultiPayKeysendRequestKeysend extends MultiPayKeysendRequestKeysend {
  const _MultiPayKeysendRequestKeysend(
      {this.id,
      required this.pubkey,
      required this.amountSat,
      this.preimage,
      final List<TlvRecord>? tlvRecords})
      : _tlvRecords = tlvRecords,
        super._();
  factory _MultiPayKeysendRequestKeysend.fromJson(Map<String, dynamic> json) =>
      _$MultiPayKeysendRequestKeysendFromJson(json);

  @override
  final String? id;
  @override
  final String pubkey;
  @override
  final int amountSat;
  @override
  final String? preimage;
  final List<TlvRecord>? _tlvRecords;
  @override
  List<TlvRecord>? get tlvRecords {
    final value = _tlvRecords;
    if (value == null) return null;
    if (_tlvRecords is EqualUnmodifiableListView) return _tlvRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MultiPayKeysendRequestKeysend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultiPayKeysendRequestKeysendCopyWith<_MultiPayKeysendRequestKeysend>
      get copyWith => __$MultiPayKeysendRequestKeysendCopyWithImpl<
          _MultiPayKeysendRequestKeysend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultiPayKeysendRequestKeysendToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiPayKeysendRequestKeysend &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            const DeepCollectionEquality()
                .equals(other._tlvRecords, _tlvRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, pubkey, amountSat, preimage,
      const DeepCollectionEquality().hash(_tlvRecords));

  @override
  String toString() {
    return 'MultiPayKeysendRequestKeysend(id: $id, pubkey: $pubkey, amountSat: $amountSat, preimage: $preimage, tlvRecords: $tlvRecords)';
  }
}

/// @nodoc
abstract mixin class _$MultiPayKeysendRequestKeysendCopyWith<$Res>
    implements $MultiPayKeysendRequestKeysendCopyWith<$Res> {
  factory _$MultiPayKeysendRequestKeysendCopyWith(
          _MultiPayKeysendRequestKeysend value,
          $Res Function(_MultiPayKeysendRequestKeysend) _then) =
      __$MultiPayKeysendRequestKeysendCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String pubkey,
      int amountSat,
      String? preimage,
      List<TlvRecord>? tlvRecords});
}

/// @nodoc
class __$MultiPayKeysendRequestKeysendCopyWithImpl<$Res>
    implements _$MultiPayKeysendRequestKeysendCopyWith<$Res> {
  __$MultiPayKeysendRequestKeysendCopyWithImpl(this._self, this._then);

  final _MultiPayKeysendRequestKeysend _self;
  final $Res Function(_MultiPayKeysendRequestKeysend) _then;

  /// Create a copy of MultiPayKeysendRequestKeysend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? pubkey = null,
    Object? amountSat = null,
    Object? preimage = freezed,
    Object? tlvRecords = freezed,
  }) {
    return _then(_MultiPayKeysendRequestKeysend(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pubkey: null == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      preimage: freezed == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String?,
      tlvRecords: freezed == tlvRecords
          ? _self._tlvRecords
          : tlvRecords // ignore: cast_nullable_to_non_nullable
              as List<TlvRecord>?,
    ));
  }
}

// dart format on
