// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
InfoResult _$InfoResultFromJson(Map<String, dynamic> json) {
  return GetInfoResult.fromJson(json);
}

/// @nodoc
mixin _$InfoResult {
  String? get alias;
  String? get color;
  String? get pubkey;
  BitcoinNetwork? get network;
  int? get blockHeight;
  String? get blockHash;
  List<Method> get methods;
  List<NotificationType>? get notifications;

  /// Create a copy of InfoResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InfoResultCopyWith<InfoResult> get copyWith =>
      _$InfoResultCopyWithImpl<InfoResult>(this as InfoResult, _$identity);

  /// Serializes this InfoResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InfoResult &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            const DeepCollectionEquality().equals(other.methods, methods) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alias,
      color,
      pubkey,
      network,
      blockHeight,
      blockHash,
      const DeepCollectionEquality().hash(methods),
      const DeepCollectionEquality().hash(notifications));

  @override
  String toString() {
    return 'InfoResult(alias: $alias, color: $color, pubkey: $pubkey, network: $network, blockHeight: $blockHeight, blockHash: $blockHash, methods: $methods, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $InfoResultCopyWith<$Res> {
  factory $InfoResultCopyWith(
          InfoResult value, $Res Function(InfoResult) _then) =
      _$InfoResultCopyWithImpl;
  @useResult
  $Res call(
      {String? alias,
      String? color,
      String? pubkey,
      BitcoinNetwork? network,
      int? blockHeight,
      String? blockHash,
      List<Method> methods,
      List<NotificationType>? notifications});
}

/// @nodoc
class _$InfoResultCopyWithImpl<$Res> implements $InfoResultCopyWith<$Res> {
  _$InfoResultCopyWithImpl(this._self, this._then);

  final InfoResult _self;
  final $Res Function(InfoResult) _then;

  /// Create a copy of InfoResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = freezed,
    Object? color = freezed,
    Object? pubkey = freezed,
    Object? network = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? methods = null,
    Object? notifications = freezed,
  }) {
    return _then(_self.copyWith(
      alias: freezed == alias
          ? _self.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      pubkey: freezed == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as BitcoinNetwork?,
      blockHeight: freezed == blockHeight
          ? _self.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _self.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: null == methods
          ? _self.methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      notifications: freezed == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class GetInfoResult extends InfoResult {
  const GetInfoResult(
      {this.alias,
      this.color,
      this.pubkey,
      this.network,
      this.blockHeight,
      this.blockHash,
      required final List<Method> methods,
      final List<NotificationType>? notifications})
      : _methods = methods,
        _notifications = notifications,
        super._();
  factory GetInfoResult.fromJson(Map<String, dynamic> json) =>
      _$GetInfoResultFromJson(json);

  @override
  final String? alias;
  @override
  final String? color;
  @override
  final String? pubkey;
  @override
  final BitcoinNetwork? network;
  @override
  final int? blockHeight;
  @override
  final String? blockHash;
  final List<Method> _methods;
  @override
  List<Method> get methods {
    if (_methods is EqualUnmodifiableListView) return _methods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_methods);
  }

  final List<NotificationType>? _notifications;
  @override
  List<NotificationType>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of InfoResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetInfoResultCopyWith<GetInfoResult> get copyWith =>
      _$GetInfoResultCopyWithImpl<GetInfoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetInfoResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetInfoResult &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pubkey, pubkey) || other.pubkey == pubkey) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.blockHeight, blockHeight) ||
                other.blockHeight == blockHeight) &&
            (identical(other.blockHash, blockHash) ||
                other.blockHash == blockHash) &&
            const DeepCollectionEquality().equals(other._methods, _methods) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alias,
      color,
      pubkey,
      network,
      blockHeight,
      blockHash,
      const DeepCollectionEquality().hash(_methods),
      const DeepCollectionEquality().hash(_notifications));

  @override
  String toString() {
    return 'InfoResult(alias: $alias, color: $color, pubkey: $pubkey, network: $network, blockHeight: $blockHeight, blockHash: $blockHash, methods: $methods, notifications: $notifications)';
  }
}

/// @nodoc
abstract mixin class $GetInfoResultCopyWith<$Res>
    implements $InfoResultCopyWith<$Res> {
  factory $GetInfoResultCopyWith(
          GetInfoResult value, $Res Function(GetInfoResult) _then) =
      _$GetInfoResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? alias,
      String? color,
      String? pubkey,
      BitcoinNetwork? network,
      int? blockHeight,
      String? blockHash,
      List<Method> methods,
      List<NotificationType>? notifications});
}

/// @nodoc
class _$GetInfoResultCopyWithImpl<$Res>
    implements $GetInfoResultCopyWith<$Res> {
  _$GetInfoResultCopyWithImpl(this._self, this._then);

  final GetInfoResult _self;
  final $Res Function(GetInfoResult) _then;

  /// Create a copy of InfoResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alias = freezed,
    Object? color = freezed,
    Object? pubkey = freezed,
    Object? network = freezed,
    Object? blockHeight = freezed,
    Object? blockHash = freezed,
    Object? methods = null,
    Object? notifications = freezed,
  }) {
    return _then(GetInfoResult(
      alias: freezed == alias
          ? _self.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      pubkey: freezed == pubkey
          ? _self.pubkey
          : pubkey // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as BitcoinNetwork?,
      blockHeight: freezed == blockHeight
          ? _self.blockHeight
          : blockHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: freezed == blockHash
          ? _self.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      methods: null == methods
          ? _self._methods
          : methods // ignore: cast_nullable_to_non_nullable
              as List<Method>,
      notifications: freezed == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationType>?,
    ));
  }
}

// dart format on
