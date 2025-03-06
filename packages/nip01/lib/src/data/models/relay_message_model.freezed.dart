// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelayMessageModel {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RelayMessageModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RelayMessageModel()';
  }
}

/// @nodoc
class $RelayMessageModelCopyWith<$Res> {
  $RelayMessageModelCopyWith(
      RelayMessageModel _, $Res Function(RelayMessageModel) __);
}

/// @nodoc

class RelayEventMessageModel extends RelayMessageModel {
  const RelayEventMessageModel(
      {required this.subscriptionId, required this.event})
      : super._();

  final String subscriptionId;
  final SignedEvent event;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayEventMessageModelCopyWith<RelayEventMessageModel> get copyWith =>
      _$RelayEventMessageModelCopyWithImpl<RelayEventMessageModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayEventMessageModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, subscriptionId, const DeepCollectionEquality().hash(event));

  @override
  String toString() {
    return 'RelayMessageModel.event(subscriptionId: $subscriptionId, event: $event)';
  }
}

/// @nodoc
abstract mixin class $RelayEventMessageModelCopyWith<$Res>
    implements $RelayMessageModelCopyWith<$Res> {
  factory $RelayEventMessageModelCopyWith(RelayEventMessageModel value,
          $Res Function(RelayEventMessageModel) _then) =
      _$RelayEventMessageModelCopyWithImpl;
  @useResult
  $Res call({String subscriptionId, SignedEvent event});
}

/// @nodoc
class _$RelayEventMessageModelCopyWithImpl<$Res>
    implements $RelayEventMessageModelCopyWith<$Res> {
  _$RelayEventMessageModelCopyWithImpl(this._self, this._then);

  final RelayEventMessageModel _self;
  final $Res Function(RelayEventMessageModel) _then;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
    Object? event = freezed,
  }) {
    return _then(RelayEventMessageModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      event: freezed == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as SignedEvent,
    ));
  }
}

/// @nodoc

class RelayOkMessageModel extends RelayMessageModel {
  const RelayOkMessageModel(
      {required this.eventId, required this.accepted, required this.message})
      : super._();

  final String eventId;
  final bool accepted;
  final String message;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayOkMessageModelCopyWith<RelayOkMessageModel> get copyWith =>
      _$RelayOkMessageModelCopyWithImpl<RelayOkMessageModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayOkMessageModel &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, accepted, message);

  @override
  String toString() {
    return 'RelayMessageModel.ok(eventId: $eventId, accepted: $accepted, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RelayOkMessageModelCopyWith<$Res>
    implements $RelayMessageModelCopyWith<$Res> {
  factory $RelayOkMessageModelCopyWith(
          RelayOkMessageModel value, $Res Function(RelayOkMessageModel) _then) =
      _$RelayOkMessageModelCopyWithImpl;
  @useResult
  $Res call({String eventId, bool accepted, String message});
}

/// @nodoc
class _$RelayOkMessageModelCopyWithImpl<$Res>
    implements $RelayOkMessageModelCopyWith<$Res> {
  _$RelayOkMessageModelCopyWithImpl(this._self, this._then);

  final RelayOkMessageModel _self;
  final $Res Function(RelayOkMessageModel) _then;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eventId = null,
    Object? accepted = null,
    Object? message = null,
  }) {
    return _then(RelayOkMessageModel(
      eventId: null == eventId
          ? _self.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: null == accepted
          ? _self.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RelayEoseMessageModel extends RelayMessageModel {
  const RelayEoseMessageModel({required this.subscriptionId}) : super._();

  final String subscriptionId;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayEoseMessageModelCopyWith<RelayEoseMessageModel> get copyWith =>
      _$RelayEoseMessageModelCopyWithImpl<RelayEoseMessageModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayEoseMessageModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId);

  @override
  String toString() {
    return 'RelayMessageModel.eose(subscriptionId: $subscriptionId)';
  }
}

/// @nodoc
abstract mixin class $RelayEoseMessageModelCopyWith<$Res>
    implements $RelayMessageModelCopyWith<$Res> {
  factory $RelayEoseMessageModelCopyWith(RelayEoseMessageModel value,
          $Res Function(RelayEoseMessageModel) _then) =
      _$RelayEoseMessageModelCopyWithImpl;
  @useResult
  $Res call({String subscriptionId});
}

/// @nodoc
class _$RelayEoseMessageModelCopyWithImpl<$Res>
    implements $RelayEoseMessageModelCopyWith<$Res> {
  _$RelayEoseMessageModelCopyWithImpl(this._self, this._then);

  final RelayEoseMessageModel _self;
  final $Res Function(RelayEoseMessageModel) _then;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
  }) {
    return _then(RelayEoseMessageModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RelayClosedMessageModel extends RelayMessageModel {
  const RelayClosedMessageModel(
      {required this.subscriptionId, required this.message})
      : super._();

  final String subscriptionId;
  final String message;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayClosedMessageModelCopyWith<RelayClosedMessageModel> get copyWith =>
      _$RelayClosedMessageModelCopyWithImpl<RelayClosedMessageModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayClosedMessageModel &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId, message);

  @override
  String toString() {
    return 'RelayMessageModel.closed(subscriptionId: $subscriptionId, message: $message)';
  }
}

/// @nodoc
abstract mixin class $RelayClosedMessageModelCopyWith<$Res>
    implements $RelayMessageModelCopyWith<$Res> {
  factory $RelayClosedMessageModelCopyWith(RelayClosedMessageModel value,
          $Res Function(RelayClosedMessageModel) _then) =
      _$RelayClosedMessageModelCopyWithImpl;
  @useResult
  $Res call({String subscriptionId, String message});
}

/// @nodoc
class _$RelayClosedMessageModelCopyWithImpl<$Res>
    implements $RelayClosedMessageModelCopyWith<$Res> {
  _$RelayClosedMessageModelCopyWithImpl(this._self, this._then);

  final RelayClosedMessageModel _self;
  final $Res Function(RelayClosedMessageModel) _then;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subscriptionId = null,
    Object? message = null,
  }) {
    return _then(RelayClosedMessageModel(
      subscriptionId: null == subscriptionId
          ? _self.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RelayNoticeMessageModel extends RelayMessageModel {
  const RelayNoticeMessageModel({required this.message}) : super._();

  final String message;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayNoticeMessageModelCopyWith<RelayNoticeMessageModel> get copyWith =>
      _$RelayNoticeMessageModelCopyWithImpl<RelayNoticeMessageModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayNoticeMessageModel &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RelayMessageModel.notice(message: $message)';
  }
}

/// @nodoc
abstract mixin class $RelayNoticeMessageModelCopyWith<$Res>
    implements $RelayMessageModelCopyWith<$Res> {
  factory $RelayNoticeMessageModelCopyWith(RelayNoticeMessageModel value,
          $Res Function(RelayNoticeMessageModel) _then) =
      _$RelayNoticeMessageModelCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RelayNoticeMessageModelCopyWithImpl<$Res>
    implements $RelayNoticeMessageModelCopyWith<$Res> {
  _$RelayNoticeMessageModelCopyWithImpl(this._self, this._then);

  final RelayNoticeMessageModel _self;
  final $Res Function(RelayNoticeMessageModel) _then;

  /// Create a copy of RelayMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(RelayNoticeMessageModel(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
