// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Relay {
  String get url;
  RelayStatus get status;
  String get statusMessage;

  /// Create a copy of Relay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayCopyWith<Relay> get copyWith =>
      _$RelayCopyWithImpl<Relay>(this as Relay, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Relay &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, status, statusMessage);

  @override
  String toString() {
    return 'Relay(url: $url, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class $RelayCopyWith<$Res> {
  factory $RelayCopyWith(Relay value, $Res Function(Relay) _then) =
      _$RelayCopyWithImpl;
  @useResult
  $Res call({String url, RelayStatus status, String statusMessage});
}

/// @nodoc
class _$RelayCopyWithImpl<$Res> implements $RelayCopyWith<$Res> {
  _$RelayCopyWithImpl(this._self, this._then);

  final Relay _self;
  final $Res Function(Relay) _then;

  /// Create a copy of Relay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RelayStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Relay extends Relay {
  _Relay({required this.url, required this.status, this.statusMessage = ''})
      : super._();

  @override
  final String url;
  @override
  final RelayStatus status;
  @override
  @JsonKey()
  final String statusMessage;

  /// Create a copy of Relay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RelayCopyWith<_Relay> get copyWith =>
      __$RelayCopyWithImpl<_Relay>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Relay &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, status, statusMessage);

  @override
  String toString() {
    return 'Relay(url: $url, status: $status, statusMessage: $statusMessage)';
  }
}

/// @nodoc
abstract mixin class _$RelayCopyWith<$Res> implements $RelayCopyWith<$Res> {
  factory _$RelayCopyWith(_Relay value, $Res Function(_Relay) _then) =
      __$RelayCopyWithImpl;
  @override
  @useResult
  $Res call({String url, RelayStatus status, String statusMessage});
}

/// @nodoc
class __$RelayCopyWithImpl<$Res> implements _$RelayCopyWith<$Res> {
  __$RelayCopyWithImpl(this._self, this._then);

  final _Relay _self;
  final $Res Function(_Relay) _then;

  /// Create a copy of Relay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_Relay(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as RelayStatus,
      statusMessage: null == statusMessage
          ? _self.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
