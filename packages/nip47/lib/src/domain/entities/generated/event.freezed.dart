// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Event {
  String get eventId;
  DateTime get createdAt;
  List<String> get relays;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventCopyWith<Event> get copyWith =>
      _$EventCopyWithImpl<Event>(this as Event, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Event &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.relays, relays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, createdAt,
      const DeepCollectionEquality().hash(relays));

  @override
  String toString() {
    return 'Event(eventId: $eventId, createdAt: $createdAt, relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) =
      _$EventCopyWithImpl;
  @useResult
  $Res call({String eventId, DateTime createdAt, List<String> relays});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? createdAt = null,
    Object? relays = null,
  }) {
    return _then(_self.copyWith(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relays: null == relays
          ? _self.relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class InfoEventEvent extends Event {
  const InfoEventEvent(
      {required this.infoEvent,
      required this.eventId,
      required this.createdAt,
      required final List<String> relays})
      : _relays = relays,
        super._();

  final InfoEvent infoEvent;
  @override
  final String eventId;
  @override
  final DateTime createdAt;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventEventCopyWith<InfoEventEvent> get copyWith =>
      _$InfoEventEventCopyWithImpl<InfoEventEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEventEvent &&
            (identical(other.infoEvent, infoEvent) ||
                other.infoEvent == infoEvent) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._relays, _relays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, infoEvent, eventId, createdAt,
      const DeepCollectionEquality().hash(_relays));

  @override
  String toString() {
    return 'Event.info(infoEvent: $infoEvent, eventId: $eventId, createdAt: $createdAt, relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $InfoEventEventCopyWith<$Res>
    implements $EventCopyWith<$Res> {
  factory $InfoEventEventCopyWith(
          InfoEventEvent value, $Res Function(InfoEventEvent) _then) =
      _$InfoEventEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {InfoEvent infoEvent,
      String eventId,
      DateTime createdAt,
      List<String> relays});

  $InfoEventCopyWith<$Res> get infoEvent;
}

/// @nodoc
class _$InfoEventEventCopyWithImpl<$Res>
    implements $InfoEventEventCopyWith<$Res> {
  _$InfoEventEventCopyWithImpl(this._self, this._then);

  final InfoEventEvent _self;
  final $Res Function(InfoEventEvent) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? infoEvent = null,
    Object? eventId = null,
    Object? createdAt = null,
    Object? relays = null,
  }) {
    return _then(InfoEventEvent(
      infoEvent: null == infoEvent
          ? _self.infoEvent
          : infoEvent // ignore: cast_nullable_to_non_nullable
              as InfoEvent,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoEventCopyWith<$Res> get infoEvent {
    return $InfoEventCopyWith<$Res>(_self.infoEvent, (value) {
      return _then(_self.copyWith(infoEvent: value));
    });
  }
}

/// @nodoc

class RequestEvent extends Event {
  const RequestEvent(
      {required this.request,
      required this.eventId,
      required this.createdAt,
      required final List<String> relays})
      : _relays = relays,
        super._();

  final Request request;
  @override
  final String eventId;
  @override
  final DateTime createdAt;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestEventCopyWith<RequestEvent> get copyWith =>
      _$RequestEventCopyWithImpl<RequestEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestEvent &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._relays, _relays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, eventId, createdAt,
      const DeepCollectionEquality().hash(_relays));

  @override
  String toString() {
    return 'Event.request(request: $request, eventId: $eventId, createdAt: $createdAt, relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $RequestEventCopyWith<$Res>
    implements $EventCopyWith<$Res> {
  factory $RequestEventCopyWith(
          RequestEvent value, $Res Function(RequestEvent) _then) =
      _$RequestEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Request request,
      String eventId,
      DateTime createdAt,
      List<String> relays});

  $RequestCopyWith<$Res> get request;
}

/// @nodoc
class _$RequestEventCopyWithImpl<$Res> implements $RequestEventCopyWith<$Res> {
  _$RequestEventCopyWithImpl(this._self, this._then);

  final RequestEvent _self;
  final $Res Function(RequestEvent) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
    Object? eventId = null,
    Object? createdAt = null,
    Object? relays = null,
  }) {
    return _then(RequestEvent(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res> get request {
    return $RequestCopyWith<$Res>(_self.request, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc

class ResponseEvent extends Event {
  const ResponseEvent(
      {required this.response,
      required this.eventId,
      required this.createdAt,
      required final List<String> relays})
      : _relays = relays,
        super._();

  final Response response;
  @override
  final String eventId;
  @override
  final DateTime createdAt;
  final List<String> _relays;
  @override
  List<String> get relays {
    if (_relays is EqualUnmodifiableListView) return _relays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relays);
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseEventCopyWith<ResponseEvent> get copyWith =>
      _$ResponseEventCopyWithImpl<ResponseEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseEvent &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._relays, _relays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, eventId, createdAt,
      const DeepCollectionEquality().hash(_relays));

  @override
  String toString() {
    return 'Event.response(response: $response, eventId: $eventId, createdAt: $createdAt, relays: $relays)';
  }
}

/// @nodoc
abstract mixin class $ResponseEventCopyWith<$Res>
    implements $EventCopyWith<$Res> {
  factory $ResponseEventCopyWith(
          ResponseEvent value, $Res Function(ResponseEvent) _then) =
      _$ResponseEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Response response,
      String eventId,
      DateTime createdAt,
      List<String> relays});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ResponseEventCopyWithImpl<$Res>
    implements $ResponseEventCopyWith<$Res> {
  _$ResponseEventCopyWithImpl(this._self, this._then);

  final ResponseEvent _self;
  final $Res Function(ResponseEvent) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
    Object? eventId = null,
    Object? createdAt = null,
    Object? relays = null,
  }) {
    return _then(ResponseEvent(
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      relays: null == relays
          ? _self._relays
          : relays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_self.response, (value) {
      return _then(_self.copyWith(response: value));
    });
  }
}

// dart format on
