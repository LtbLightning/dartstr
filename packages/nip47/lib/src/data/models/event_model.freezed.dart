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
  DateTime get createdAt;
  Object? get relay;

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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.relay, relay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, const DeepCollectionEquality().hash(relay));

  @override
  String toString() {
    return 'EventModel(createdAt: $createdAt, relay: $relay)';
  }
}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) _then) =
      _$EventModelCopyWithImpl;
  @useResult
  $Res call({DateTime createdAt});
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
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
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
      {this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required final Map<String, dynamic> params,
      required this.createdAt,
      this.expiresAt,
      this.relay})
      : _params = params,
        super._();

  final String? id;
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
  @override
  final String? relay;

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
                other.expiresAt == expiresAt) &&
            (identical(other.relay, relay) || other.relay == relay));
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
      expiresAt,
      relay);

  @override
  String toString() {
    return 'EventModel.request(id: $id, clientPubkey: $clientPubkey, walletServicePubkey: $walletServicePubkey, method: $method, params: $params, createdAt: $createdAt, expiresAt: $expiresAt, relay: $relay)';
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
      {String? id,
      String clientPubkey,
      String walletServicePubkey,
      String method,
      Map<String, dynamic> params,
      DateTime createdAt,
      DateTime? expiresAt,
      String? relay});
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
    Object? id = freezed,
    Object? clientPubkey = null,
    Object? walletServicePubkey = null,
    Object? method = null,
    Object? params = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? relay = freezed,
  }) {
    return _then(RequestEventModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      relay: freezed == relay
          ? _self.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ResponseEventModel extends EventModel {
  const ResponseEventModel(this.response,
      {required this.eventId,
      required this.createdAt,
      required final List<String> relay})
      : _relay = relay,
        super._();

  final ResponseModel response;
  final String eventId;
  @override
  final DateTime createdAt;
  final List<String> _relay;
  @override
  List<String> get relay {
    if (_relay is EqualUnmodifiableListView) return _relay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relay);
  }

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
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._relay, _relay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, eventId, createdAt,
      const DeepCollectionEquality().hash(_relay));

  @override
  String toString() {
    return 'EventModel.response(response: $response, eventId: $eventId, createdAt: $createdAt, relay: $relay)';
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
      {ResponseModel response,
      String eventId,
      DateTime createdAt,
      List<String> relay});

  $ResponseModelCopyWith<$Res> get response;
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
    Object? response = null,
    Object? eventId = null,
    Object? createdAt = null,
    Object? relay = null,
  }) {
    return _then(ResponseEventModel(
      null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseModel,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relay: null == relay
          ? _self._relay
          : relay // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<$Res> get response {
    return $ResponseModelCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

/// @nodoc

class InfoEventModel extends EventModel {
  const InfoEventModel(
      {this.id,
      required this.walletServicePubkey,
      required final List<String> methods,
      required this.createdAt,
      final List<String>? notifications,
      this.clientPubkey,
      this.walletRelay,
      this.relay})
      : _methods = methods,
        _notifications = notifications,
        super._();

  final String? id;
  final String walletServicePubkey;
  final List<String> _methods;
  List<String> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  @override
  final DateTime createdAt;
  final List<String>? _notifications;
  List<String>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final String? clientPubkey;
  final String? walletRelay;
  @override
  final String? relay;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventModelCopyWith<InfoEventModel> get copyWith =>
      _$InfoEventModelCopyWithImpl<InfoEventModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEventModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletServicePubkey, walletServicePubkey) ||
                other.walletServicePubkey == walletServicePubkey) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.clientPubkey, clientPubkey) ||
                other.clientPubkey == clientPubkey) &&
            (identical(other.walletRelay, walletRelay) ||
                other.walletRelay == walletRelay) &&
            (identical(other.relay, relay) || other.relay == relay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      walletServicePubkey,
      const DeepCollectionEquality().hash(_methods),
      createdAt,
      const DeepCollectionEquality().hash(_notifications),
      clientPubkey,
      walletRelay,
      relay);

  @override
  String toString() {
    return 'EventModel.info(id: $id, walletServicePubkey: $walletServicePubkey, methods: $methods, createdAt: $createdAt, notifications: $notifications, clientPubkey: $clientPubkey, walletRelay: $walletRelay, relay: $relay)';
  }
}

/// @nodoc
abstract mixin class $InfoEventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory $InfoEventModelCopyWith(
          InfoEventModel value, $Res Function(InfoEventModel) _then) =
      _$InfoEventModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String walletServicePubkey,
      List<String> methods,
      DateTime createdAt,
      List<String>? notifications,
      String? clientPubkey,
      String? walletRelay,
      String? relay});
}

/// @nodoc
class _$InfoEventModelCopyWithImpl<$Res>
    implements $InfoEventModelCopyWith<$Res> {
  _$InfoEventModelCopyWithImpl(this._self, this._then);

  final InfoEventModel _self;
  final $Res Function(InfoEventModel) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? walletServicePubkey = null,
    Object? methods = null,
    Object? createdAt = null,
    Object? notifications = freezed,
    Object? clientPubkey = freezed,
    Object? walletRelay = freezed,
    Object? relay = freezed,
  }) {
    return _then(InfoEventModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      walletServicePubkey: null == walletServicePubkey
          ? _self.walletServicePubkey
          : walletServicePubkey // ignore: cast_nullable_to_non_nullable
              as String,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      clientPubkey: freezed == clientPubkey
          ? _self.clientPubkey
          : clientPubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      walletRelay: freezed == walletRelay
          ? _self.walletRelay
          : walletRelay // ignore: cast_nullable_to_non_nullable
              as String?,
      relay: freezed == relay
          ? _self.relay
          : relay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
