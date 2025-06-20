// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relay_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelayState {
  String get relayUrl;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RelayStateCopyWith<RelayState> get copyWith =>
      _$RelayStateCopyWithImpl<RelayState>(this as RelayState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'RelayState(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $RelayStateCopyWith<$Res> {
  factory $RelayStateCopyWith(
          RelayState value, $Res Function(RelayState) _then) =
      _$RelayStateCopyWithImpl;
  @useResult
  $Res call({String relayUrl});
}

/// @nodoc
class _$RelayStateCopyWithImpl<$Res> implements $RelayStateCopyWith<$Res> {
  _$RelayStateCopyWithImpl(this._self, this._then);

  final RelayState _self;
  final $Res Function(RelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relayUrl = null,
  }) {
    return _then(_self.copyWith(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ConnectingRelayState extends RelayState {
  const ConnectingRelayState({required this.relayUrl}) : super._();

  @override
  final String relayUrl;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectingRelayStateCopyWith<ConnectingRelayState> get copyWith =>
      _$ConnectingRelayStateCopyWithImpl<ConnectingRelayState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectingRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'RelayState.connecting(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $ConnectingRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $ConnectingRelayStateCopyWith(ConnectingRelayState value,
          $Res Function(ConnectingRelayState) _then) =
      _$ConnectingRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl});
}

/// @nodoc
class _$ConnectingRelayStateCopyWithImpl<$Res>
    implements $ConnectingRelayStateCopyWith<$Res> {
  _$ConnectingRelayStateCopyWithImpl(this._self, this._then);

  final ConnectingRelayState _self;
  final $Res Function(ConnectingRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
  }) {
    return _then(ConnectingRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ConnectedRelayState extends RelayState {
  const ConnectedRelayState({required this.relayUrl}) : super._();

  @override
  final String relayUrl;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectedRelayStateCopyWith<ConnectedRelayState> get copyWith =>
      _$ConnectedRelayStateCopyWithImpl<ConnectedRelayState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectedRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'RelayState.connected(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $ConnectedRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $ConnectedRelayStateCopyWith(
          ConnectedRelayState value, $Res Function(ConnectedRelayState) _then) =
      _$ConnectedRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl});
}

/// @nodoc
class _$ConnectedRelayStateCopyWithImpl<$Res>
    implements $ConnectedRelayStateCopyWith<$Res> {
  _$ConnectedRelayStateCopyWithImpl(this._self, this._then);

  final ConnectedRelayState _self;
  final $Res Function(ConnectedRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
  }) {
    return _then(ConnectedRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DisconnectingRelayState extends RelayState {
  const DisconnectingRelayState({required this.relayUrl, this.reason})
      : super._();

  @override
  final String relayUrl;
  final String? reason;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DisconnectingRelayStateCopyWith<DisconnectingRelayState> get copyWith =>
      _$DisconnectingRelayStateCopyWithImpl<DisconnectingRelayState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisconnectingRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, reason);

  @override
  String toString() {
    return 'RelayState.disconnecting(relayUrl: $relayUrl, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $DisconnectingRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $DisconnectingRelayStateCopyWith(DisconnectingRelayState value,
          $Res Function(DisconnectingRelayState) _then) =
      _$DisconnectingRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String? reason});
}

/// @nodoc
class _$DisconnectingRelayStateCopyWithImpl<$Res>
    implements $DisconnectingRelayStateCopyWith<$Res> {
  _$DisconnectingRelayStateCopyWithImpl(this._self, this._then);

  final DisconnectingRelayState _self;
  final $Res Function(DisconnectingRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? reason = freezed,
  }) {
    return _then(DisconnectingRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class DisconnectedRelayState extends RelayState {
  const DisconnectedRelayState({required this.relayUrl, this.reason})
      : super._();

  @override
  final String relayUrl;
  final String? reason;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DisconnectedRelayStateCopyWith<DisconnectedRelayState> get copyWith =>
      _$DisconnectedRelayStateCopyWithImpl<DisconnectedRelayState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisconnectedRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl, reason);

  @override
  String toString() {
    return 'RelayState.disconnected(relayUrl: $relayUrl, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $DisconnectedRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $DisconnectedRelayStateCopyWith(DisconnectedRelayState value,
          $Res Function(DisconnectedRelayState) _then) =
      _$DisconnectedRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl, String? reason});
}

/// @nodoc
class _$DisconnectedRelayStateCopyWithImpl<$Res>
    implements $DisconnectedRelayStateCopyWith<$Res> {
  _$DisconnectedRelayStateCopyWithImpl(this._self, this._then);

  final DisconnectedRelayState _self;
  final $Res Function(DisconnectedRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
    Object? reason = freezed,
  }) {
    return _then(DisconnectedRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class DisposingRelayState extends RelayState {
  const DisposingRelayState({required this.relayUrl}) : super._();

  @override
  final String relayUrl;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DisposingRelayStateCopyWith<DisposingRelayState> get copyWith =>
      _$DisposingRelayStateCopyWithImpl<DisposingRelayState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisposingRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'RelayState.disposing(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $DisposingRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $DisposingRelayStateCopyWith(
          DisposingRelayState value, $Res Function(DisposingRelayState) _then) =
      _$DisposingRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl});
}

/// @nodoc
class _$DisposingRelayStateCopyWithImpl<$Res>
    implements $DisposingRelayStateCopyWith<$Res> {
  _$DisposingRelayStateCopyWithImpl(this._self, this._then);

  final DisposingRelayState _self;
  final $Res Function(DisposingRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
  }) {
    return _then(DisposingRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DisposedRelayState extends RelayState {
  const DisposedRelayState({required this.relayUrl}) : super._();

  @override
  final String relayUrl;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DisposedRelayStateCopyWith<DisposedRelayState> get copyWith =>
      _$DisposedRelayStateCopyWithImpl<DisposedRelayState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DisposedRelayState &&
            (identical(other.relayUrl, relayUrl) ||
                other.relayUrl == relayUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, relayUrl);

  @override
  String toString() {
    return 'RelayState.disposed(relayUrl: $relayUrl)';
  }
}

/// @nodoc
abstract mixin class $DisposedRelayStateCopyWith<$Res>
    implements $RelayStateCopyWith<$Res> {
  factory $DisposedRelayStateCopyWith(
          DisposedRelayState value, $Res Function(DisposedRelayState) _then) =
      _$DisposedRelayStateCopyWithImpl;
  @override
  @useResult
  $Res call({String relayUrl});
}

/// @nodoc
class _$DisposedRelayStateCopyWithImpl<$Res>
    implements $DisposedRelayStateCopyWith<$Res> {
  _$DisposedRelayStateCopyWithImpl(this._self, this._then);

  final DisposedRelayState _self;
  final $Res Function(DisposedRelayState) _then;

  /// Create a copy of RelayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? relayUrl = null,
  }) {
    return _then(DisposedRelayState(
      relayUrl: null == relayUrl
          ? _self.relayUrl
          : relayUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
