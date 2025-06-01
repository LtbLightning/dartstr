// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel {
  String get requestId;
  String get clientPubkey;
  String get walletServicePubkey;
  String get resultType;
  Map<String, dynamic>? get result;
  ResponseErrorModel? get error;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      _$ResponseModelCopyWithImpl<ResponseModel>(
          this as ResponseModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      resultType,
      const DeepCollectionEquality().hash(result),
      error);

  @override
  String toString() {
    return 'ResponseModel(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, resultType: $resultType, result: $result, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) _then) =
      _$ResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String resultType,
      Map<String, dynamic>? result,
      ResponseErrorModel? error});

  $ResponseErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel _self;
  final $Res Function(ResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? resultType = null,
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseErrorModel?,
    ));
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorModelCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ResponseErrorModelCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc

class NewResponseModel extends ResponseModel {
  const NewResponseModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.resultType,
      final Map<String, dynamic>? result,
      this.error})
      : _result = result,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final String resultType;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ResponseErrorModel? error;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewResponseModelCopyWith<NewResponseModel> get copyWith =>
      _$NewResponseModelCopyWithImpl<NewResponseModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewResponseModel &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      resultType,
      const DeepCollectionEquality().hash(_result),
      error);

  @override
  String toString() {
    return 'ResponseModel(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, resultType: $resultType, result: $result, error: $error)';
  }
}

/// @nodoc
abstract mixin class $NewResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $NewResponseModelCopyWith(
          NewResponseModel value, $Res Function(NewResponseModel) _then) =
      _$NewResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String resultType,
      Map<String, dynamic>? result,
      ResponseErrorModel? error});

  @override
  $ResponseErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$NewResponseModelCopyWithImpl<$Res>
    implements $NewResponseModelCopyWith<$Res> {
  _$NewResponseModelCopyWithImpl(this._self, this._then);

  final NewResponseModel _self;
  final $Res Function(NewResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? resultType = null,
    Object? result = freezed,
    Object? error = freezed,
  }) {
    return _then(NewResponseModel(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseErrorModel?,
    ));
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorModelCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ResponseErrorModelCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc

class ResponseEventModel extends ResponseModel {
  const ResponseEventModel(
      {required this.requestId,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.resultType,
      final Map<String, dynamic>? result,
      this.error,
      required this.eventId,
      required final List<String> relays,
      required this.createdAt})
      : _result = result,
        _relays = relays,
        super._();

  @override
  final String requestId;
  @override
  final String clientPubkey;
  @override
  final String walletServicePubkey;
  @override
  final String resultType;
  final Map<String, dynamic>? _result;
  @override
  Map<String, dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ResponseErrorModel? error;
  final String eventId;
  final List<String> _relays;
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  final DateTime createdAt;

  /// Create a copy of ResponseModel
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
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other._relays, _relays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestId,
      clientPubkey,
      walletServicePubkey,
      resultType,
      const DeepCollectionEquality().hash(_result),
      error,
      eventId,
      const DeepCollectionEquality().hash(_relays),
      createdAt);

  @override
  String toString() {
    return 'ResponseModel.event(requestId: $requestId, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, resultType: $resultType, result: $result, error: $error, eventId: $eventId, relays: $relays, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $ResponseEventModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory $ResponseEventModelCopyWith(
          ResponseEventModel value, $Res Function(ResponseEventModel) _then) =
      _$ResponseEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String requestId,
      String clientPubkey,
      String walletServicePubkey,
      String resultType,
      Map<String, dynamic>? result,
      ResponseErrorModel? error,
      String eventId,
      List<String> relays,
      DateTime createdAt});

  @override
  $ResponseErrorModelCopyWith<$Res>? get error;
}

/// @nodoc
class _$ResponseEventModelCopyWithImpl<$Res>
    implements $ResponseEventModelCopyWith<$Res> {
  _$ResponseEventModelCopyWithImpl(this._self, this._then);

  final ResponseEventModel _self;
  final $Res Function(ResponseEventModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? resultType = null,
    Object? result = freezed,
    Object? error = freezed,
    Object? eventId = null,
    Object? relays = null,
    Object? createdAt = null,
  }) {
    return _then(ResponseEventModel(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      clientPubkey: null == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      resultType: null == resultType
          ? _self.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as ResponseErrorModel?,
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

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseErrorModelCopyWith<$Res>? get error {
    if (_self.error == null) {
      return null;
    }

    return $ResponseErrorModelCopyWith<$Res>(_self.error!, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

// dart format on
