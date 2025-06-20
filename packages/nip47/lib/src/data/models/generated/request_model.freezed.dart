// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestModel {
  String get clientPubkey;
  String get walletServicePubkey;
  String get method;
  Map<String, dynamic> get params;
  DateTime? get expiresAt;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestModelCopyWith<RequestModel> get copyWith =>
      _$RequestModelCopyWithImpl<RequestModel>(
          this as RequestModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other.params, params) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(params),
      expiresAt);

  @override
  String toString() {
    return 'RequestModel(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) _then) =
      _$RequestModelCopyWithImpl;
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime? expiresAt});
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res> implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._self, this._then);

  final RequestModel _self;
  final $Res Function(RequestModel) _then;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class NewRequestModel extends RequestModel {
  const NewRequestModel(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      this.expiresAt})
      : _params = params,
        super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final String method;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  final DateTime? expiresAt;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewRequestModelCopyWith<NewRequestModel> get copyWith =>
      _$NewRequestModelCopyWithImpl<NewRequestModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewRequestModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params),
      expiresAt);

  @override
  String toString() {
    return 'RequestModel(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $NewRequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory $NewRequestModelCopyWith(
          NewRequestModel value, $Res Function(NewRequestModel) _then) =
      _$NewRequestModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime? expiresAt});
}

/// @nodoc
class _$NewRequestModelCopyWithImpl<$Res>
    implements $NewRequestModelCopyWith<$Res> {
  _$NewRequestModelCopyWithImpl(this._self, this._then);

  final NewRequestModel _self;
  final $Res Function(NewRequestModel) _then;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? expiresAt = freezed,
  }) {
    return _then(NewRequestModel(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class RequestEventModel extends RequestModel {
  const RequestEventModel(
      {required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      this.expiresAt,
      required this.eventId,
      required final List<String> relays,
      required this.createdAt})
      : _params = params,
        _relays = relays,
        super._();

  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final String method;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  final DateTime? expiresAt;
  final String eventId;
  final List<String> _relays;
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final DateTime createdAt;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestEventModelCopyWith<RequestEventModel> get copyWith =>
      _$RequestEventModelCopyWithImpl<RequestEventModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestEventModel &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params),
      expiresAt,
      eventId,
      const DeepCollectionEquality().hash(_relays),
      createdAt);

  @override
  String toString() {
    return 'RequestModel.event(clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, expiresAt: $expiresAt, eventId: $eventId, relays: $relays, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $RequestEventModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory $RequestEventModelCopyWith(
          RequestEventModel value, $Res Function(RequestEventModel) _then) =
      _$RequestEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime? expiresAt,
      String eventId,
      List<String> relays,
      DateTime createdAt});
}

/// @nodoc
class _$RequestEventModelCopyWithImpl<$Res>
    implements $RequestEventModelCopyWith<$Res> {
  _$RequestEventModelCopyWithImpl(this._self, this._then);

  final RequestEventModel _self;
  final $Res Function(RequestEventModel) _then;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? expiresAt = freezed,
    Object? eventId = null,
    Object? relays = null,
    Object? createdAt = null,
  }) {
    return _then(RequestEventModel(
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _self.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
