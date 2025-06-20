// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subscription {
  String get id;
  List<Filters> get filters;
  List<String> get relayUrls;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<Subscription> get copyWith =>
      _$SubscriptionCopyWithImpl<Subscription>(
          this as Subscription, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Subscription &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            const DeepCollectionEquality().equals(other.relayUrls, relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(filters),
      const DeepCollectionEquality().hash(relayUrls));

  @override
  String toString() {
    return 'Subscription(id: $id, filters: $filters, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) _then) =
      _$SubscriptionCopyWithImpl;
  @useResult
  $Res call({String id, List<Filters> filters, List<String> relayUrls});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._self, this._then);

  final Subscription _self;
  final $Res Function(Subscription) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? filters = null,
    Object? relayUrls = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      relayUrls: null == relayUrls
          ? _self.relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _Subscription extends Subscription {
  const _Subscription(
      {required this.id,
      required final List<Filters> filters,
      required final List<String> relayUrls})
      : _filters = filters,
        _relayUrls = relayUrls,
        super._();

  @override
  final String id;
  final List<Filters> _filters;
  @override
  List<Filters> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  final List<String> _relayUrls;
  @override
  List<String> get relayUrls {
    if (_relayUrls is EqualUnmodifiableListView) return _relayUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relayUrls);
  }

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subscription &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other._relayUrls, _relayUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(_relayUrls));

  @override
  String toString() {
    return 'Subscription(id: $id, filters: $filters, relayUrls: $relayUrls)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) _then) =
      __$SubscriptionCopyWithImpl;
  @override
  @useResult
  $Res call({String id, List<Filters> filters, List<String> relayUrls});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(this._self, this._then);

  final _Subscription _self;
  final $Res Function(_Subscription) _then;

  /// Create a copy of Subscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? filters = null,
    Object? relayUrls = null,
  }) {
    return _then(_Subscription(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _self._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filters>,
      relayUrls: null == relayUrls
          ? _self._relayUrls
          : relayUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
