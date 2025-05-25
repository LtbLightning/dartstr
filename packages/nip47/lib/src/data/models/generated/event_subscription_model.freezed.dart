// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../event_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventSubscriptionModel {
  String get subscriptionId;
  List<Filters> get filters;
  List<String>? get relayUrls;

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventSubscriptionModelCopyWith<EventSubscriptionModel> get copyWith =>
      _$EventSubscriptionModelCopyWithImpl<EventSubscriptionModel>(
          this as EventSubscriptionModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EventSubscriptionModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality().equals(other.relayUrls, relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionId,
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(relayUrls));

  @override
  String toString() {
    return 'EventSubscriptionModel(subscriptionId: $subscriptionId, filters: $filters, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class $EventSubscriptionModelCopyWith<$Res> {
  factory $EventSubscriptionModelCopyWith(EventSubscriptionModel value,
          $Res Function(EventSubscriptionModel) _then) =
      _$EventSubscriptionModelCopyWithImpl;
  @useResult
  $Res call(
      {String subscriptionId, List<Filters> filters, List<String>? relayUrls});
}

/// @nodoc
class _$EventSubscriptionModelCopyWithImpl<$Res>
    implements $EventSubscriptionModelCopyWith<$Res> {
  _$EventSubscriptionModelCopyWithImpl(this._self, this._then);

  final EventSubscriptionModel _self;
  final $Res Function(EventSubscriptionModel) _then;

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = null,
    Object? filters = null,
    Object? relayUrls = freezed,
  }) {
    return _then(_self.copyWith(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      relayUrls: freezed == relayUrls
          ? _self.relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class RequestSubscriptionModel extends EventSubscriptionModel {
  const RequestSubscriptionModel(
      {required this.subscriptionId,
      required final List<Filters> filters,
      required this.requestStream,
      final List<String>? relayUrls})
      : _filters = filters,
        _relayUrls = relayUrls,
        super._();

  @override
  final String subscriptionId;
  final List<Filters> _filters;
  @override
  List<Filters> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final Stream<RequestEventModel> requestStream;
  final List<String>? _relayUrls;
  @override
  List<String>? get relayUrls {
    final value = _relayUrls;
    if (value == null) return null;
    if (_relayUrls is EqualUnmodifiableListView) return _relayUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestSubscriptionModelCopyWith<RequestSubscriptionModel> get copyWith =>
      _$RequestSubscriptionModelCopyWithImpl<RequestSubscriptionModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestSubscriptionModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.requestStream, requestStream) ||
                other.requestStream == requestStream) &&
            const DeepCollectionEquality()
                .equals(other._relayUrls, _relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionId,
      const DeepCollectionEquality().hash(_filters),
      requestStream,
      const DeepCollectionEquality().hash(_relayUrls));

  @override
  String toString() {
    return 'EventSubscriptionModel.request(subscriptionId: $subscriptionId, filters: $filters, requestStream: $requestStream, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class $RequestSubscriptionModelCopyWith<$Res>
    implements $EventSubscriptionModelCopyWith<$Res> {
  factory $RequestSubscriptionModelCopyWith(RequestSubscriptionModel value,
          $Res Function(RequestSubscriptionModel) _then) =
      _$RequestSubscriptionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String subscriptionId,
      List<Filters> filters,
      Stream<RequestEventModel> requestStream,
      List<String>? relayUrls});
}

/// @nodoc
class _$RequestSubscriptionModelCopyWithImpl<$Res>
    implements $RequestSubscriptionModelCopyWith<$Res> {
  _$RequestSubscriptionModelCopyWithImpl(this._self, this._then);

  final RequestSubscriptionModel _self;
  final $Res Function(RequestSubscriptionModel) _then;

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
    Object? filters = null,
    Object? requestStream = null,
    Object? relayUrls = freezed,
  }) {
    return _then(RequestSubscriptionModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      requestStream: null == requestStream
          ? _self.requestStream
          : requestStream // ignore: cast_nullable_to_non_nullable
              as Stream<RequestEventModel>,
      relayUrls: freezed == relayUrls
          ? _self._relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class ResponseSubscriptionModel extends EventSubscriptionModel {
  const ResponseSubscriptionModel(
      {required this.subscriptionId,
      required final List<Filters> filters,
      required this.responseStream,
      final List<String>? relayUrls})
      : _filters = filters,
        _relayUrls = relayUrls,
        super._();

  @override
  final String subscriptionId;
  final List<Filters> _filters;
  @override
  List<Filters> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final Stream<ResponseEventModel> responseStream;
  final List<String>? _relayUrls;
  @override
  List<String>? get relayUrls {
    final value = _relayUrls;
    if (value == null) return null;
    if (_relayUrls is EqualUnmodifiableListView) return _relayUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseSubscriptionModelCopyWith<ResponseSubscriptionModel> get copyWith =>
      _$ResponseSubscriptionModelCopyWithImpl<ResponseSubscriptionModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseSubscriptionModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.responseStream, responseStream) ||
                other.responseStream == responseStream) &&
            const DeepCollectionEquality()
                .equals(other._relayUrls, _relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionId,
      const DeepCollectionEquality().hash(_filters),
      responseStream,
      const DeepCollectionEquality().hash(_relayUrls));

  @override
  String toString() {
    return 'EventSubscriptionModel.response(subscriptionId: $subscriptionId, filters: $filters, responseStream: $responseStream, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class $ResponseSubscriptionModelCopyWith<$Res>
    implements $EventSubscriptionModelCopyWith<$Res> {
  factory $ResponseSubscriptionModelCopyWith(ResponseSubscriptionModel value,
          $Res Function(ResponseSubscriptionModel) _then) =
      _$ResponseSubscriptionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String subscriptionId,
      List<Filters> filters,
      Stream<ResponseEventModel> responseStream,
      List<String>? relayUrls});
}

/// @nodoc
class _$ResponseSubscriptionModelCopyWithImpl<$Res>
    implements $ResponseSubscriptionModelCopyWith<$Res> {
  _$ResponseSubscriptionModelCopyWithImpl(this._self, this._then);

  final ResponseSubscriptionModel _self;
  final $Res Function(ResponseSubscriptionModel) _then;

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
    Object? filters = null,
    Object? responseStream = null,
    Object? relayUrls = freezed,
  }) {
    return _then(ResponseSubscriptionModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      responseStream: null == responseStream
          ? _self.responseStream
          : responseStream // ignore: cast_nullable_to_non_nullable
              as Stream<ResponseEventModel>,
      relayUrls: freezed == relayUrls
          ? _self._relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class InfoEventSubscriptionModel extends EventSubscriptionModel {
  const InfoEventSubscriptionModel(
      {required this.subscriptionId,
      required final List<Filters> filters,
      required this.infoEventStream,
      final List<String>? relayUrls})
      : _filters = filters,
        _relayUrls = relayUrls,
        super._();

  @override
  final String subscriptionId;
  final List<Filters> _filters;
  @override
  List<Filters> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final Stream<InfoEventEventModel> infoEventStream;
  final List<String>? _relayUrls;
  @override
  List<String>? get relayUrls {
    final value = _relayUrls;
    if (value == null) return null;
    if (_relayUrls is EqualUnmodifiableListView) return _relayUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoEventSubscriptionModelCopyWith<InfoEventSubscriptionModel>
      get copyWith =>
          _$InfoEventSubscriptionModelCopyWithImpl<InfoEventSubscriptionModel>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoEventSubscriptionModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            (identical(other.infoEventStream, infoEventStream) ||
                other.infoEventStream == infoEventStream) &&
            const DeepCollectionEquality()
                .equals(other._relayUrls, _relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionId,
      const DeepCollectionEquality().hash(_filters),
      infoEventStream,
      const DeepCollectionEquality().hash(_relayUrls));

  @override
  String toString() {
    return 'EventSubscriptionModel.infoEvent(subscriptionId: $subscriptionId, filters: $filters, infoEventStream: $infoEventStream, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class $InfoEventSubscriptionModelCopyWith<$Res>
    implements $EventSubscriptionModelCopyWith<$Res> {
  factory $InfoEventSubscriptionModelCopyWith(InfoEventSubscriptionModel value,
          $Res Function(InfoEventSubscriptionModel) _then) =
      _$InfoEventSubscriptionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String subscriptionId,
      List<Filters> filters,
      Stream<InfoEventEventModel> infoEventStream,
      List<String>? relayUrls});
}

/// @nodoc
class _$InfoEventSubscriptionModelCopyWithImpl<$Res>
    implements $InfoEventSubscriptionModelCopyWith<$Res> {
  _$InfoEventSubscriptionModelCopyWithImpl(this._self, this._then);

  final InfoEventSubscriptionModel _self;
  final $Res Function(InfoEventSubscriptionModel) _then;

  /// Create a copy of EventSubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
    Object? filters = null,
    Object? infoEventStream = null,
    Object? relayUrls = freezed,
  }) {
    return _then(InfoEventSubscriptionModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      infoEventStream: null == infoEventStream
          ? _self.infoEventStream
          : infoEventStream // ignore: cast_nullable_to_non_nullable
              as Stream<InfoEventEventModel>,
      relayUrls: freezed == relayUrls
          ? _self._relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
