// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventModel {
  String get id;
  String get clientPubkey;
  DateTime get createdAt;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<EventModel> get copyWith =>
      _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, clientPubkey, createdAt);

  @override
  String toString() {
    return 'EventModel(id: $id, clientPubkey: $clientPubkey, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) _then) =
      _$EventModelCopyWithImpl;
  @useResult
  $Res call({String id, String clientPubkey, DateTime createdAt});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res> implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientPubkey = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class RequestEventModel extends EventModel {
  const RequestEventModel(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      required this.createdAt,
      this.expiresAt})
      : _params = params,
        super._();

  @override
  final String id;
  @override
  final String clientPubkey;
  final String walletServicePubkey;
  final String method;
  final Map<String, dynamic> _params;
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  final DateTime createdAt;
  final DateTime? expiresAt;

  /// Create a copy of EventModel
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientPubkey,
      walletServicePubkey,
      method,
      const DeepCollectionEquality().hash(_params),
      createdAt,
      expiresAt);

  @override
  String toString() {
    return 'EventModel.request(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, createdAt: $createdAt, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $RequestEventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory $RequestEventModelCopyWith(
          RequestEventModel value, $Res Function(RequestEventModel) _then) =
      _$RequestEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime createdAt,
      DateTime? expiresAt});
}

/// @nodoc
class _$RequestEventModelCopyWithImpl<$Res>
    implements $RequestEventModelCopyWith<$Res> {
  _$RequestEventModelCopyWithImpl(this._self, this._then);

  final RequestEventModel _self;
  final $Res Function(RequestEventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
  }) {
    return _then(RequestEventModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class ResponseEventModel extends EventModel {
  const ResponseEventModel(
      {required this.id,
      required this.requestId,
      required this.clientPubkey,
      required this.resultType,
      final Map<String, dynamic>? result,
      this.errorCode,
      this.errorMessage,
      this.multiId,
      required this.createdAt})
      : _result = result,
        super._();

  @override
  final String id;
  final String requestId;
  @override
  final String clientPubkey;
  final String resultType;
  final Map<String, dynamic>? _result;
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final String? errorCode;
  final String? errorMessage;
// The id of the invoice or keysend from a multi-pay request
  final String? multiId;
  @override
  final DateTime createdAt;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseEventModelCopyWith<ResponseEventModel> get copyWith =>
      _$ResponseEventModelCopyWithImpl<ResponseEventModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseEventModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.multiId, multiId) || other.multiId == multiId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      requestId,
      clientPubkey,
      resultType,
      const DeepCollectionEquality().hash(_result),
      errorCode,
      errorMessage,
      multiId,
      createdAt);

  @override
  String toString() {
    return 'EventModel.response(id: $id, requestId: $requestId, clientPubkey: $clientPubkey, resultType: $resultType, result: $result, errorCode: $errorCode, errorMessage: $errorMessage, multiId: $multiId, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ResponseEventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory $ResponseEventModelCopyWith(
          ResponseEventModel value, $Res Function(ResponseEventModel) _then) =
      _$ResponseEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String requestId,
      String clientPubkey,
      String resultType,
      Map<String, dynamic>? result,
      String? errorCode,
      String? errorMessage,
      String? multiId,
      DateTime createdAt});
}

/// @nodoc
class _$ResponseEventModelCopyWithImpl<$Res>
    implements $ResponseEventModelCopyWith<$Res> {
  _$ResponseEventModelCopyWithImpl(this._self, this._then);

  final ResponseEventModel _self;
  final $Res Function(ResponseEventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? resultType = null,
    Object? result = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
    Object? multiId = freezed,
    Object? createdAt = null,
  }) {
    return _then(ResponseEventModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      errorCode: freezed == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      multiId: freezed == multiId
          ? _self.multiId
          : multiId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
