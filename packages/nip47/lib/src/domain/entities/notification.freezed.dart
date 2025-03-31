// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Notification _$NotificationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'paymentReceived':
      return PaymentReceivedNotification.fromJson(json);
    case 'paymentSent':
      return PaymentSentNotification.fromJson(json);
    case 'custom':
      return CustomNotification.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Notification',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Notification {
  String get connectionPubkey;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationCopyWith<Notification> get copyWith =>
      _$NotificationCopyWithImpl<Notification>(
          this as Notification, _$identity);

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Notification &&
            (identical(other.connectionPubkey, connectionPubkey) ||
                other.connectionPubkey == connectionPubkey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, connectionPubkey);

  @override
  String toString() {
    return 'Notification(connectionPubkey: $connectionPubkey)';
  }
}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) _then) =
      _$NotificationCopyWithImpl;
  @useResult
  $Res call({String connectionPubkey});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectionPubkey = null,
  }) {
    return _then(_self.copyWith(
      connectionPubkey: null == connectionPubkey
          ? _self.connectionPubkey
          : connectionPubkey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PaymentReceivedNotification extends Notification {
  const PaymentReceivedNotification(
      {required this.connectionPubkey,
      required this.invoice,
      this.description,
      this.descriptionHash,
      required this.preimage,
      required this.paymentHash,
      required this.amountSat,
      required this.feesPaidSat,
      required this.createdAt,
      this.expiresAt,
      required this.settledAt,
      final Map<String, dynamic>? metadata,
      final String? $type})
      : _metadata = metadata,
        $type = $type ?? 'paymentReceived',
        super._();
  factory PaymentReceivedNotification.fromJson(Map<String, dynamic> json) =>
      _$PaymentReceivedNotificationFromJson(json);

  @override
  final String connectionPubkey;
  final String invoice;
  final String? description;
  final String? descriptionHash;
  final String preimage;
  final String paymentHash;
  final int amountSat;
  final int feesPaidSat;
  final int createdAt;
  final int? expiresAt;
  final int settledAt;
  final Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentReceivedNotificationCopyWith<PaymentReceivedNotification>
      get copyWith => _$PaymentReceivedNotificationCopyWithImpl<
          PaymentReceivedNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentReceivedNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentReceivedNotification &&
            (identical(other.connectionPubkey, connectionPubkey) ||
                other.connectionPubkey == connectionPubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.settledAt, settledAt) ||
                other.settledAt == settledAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      connectionPubkey,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      settledAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Notification.paymentReceived(connectionPubkey: $connectionPubkey, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, settledAt: $settledAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PaymentReceivedNotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory $PaymentReceivedNotificationCopyWith(
          PaymentReceivedNotification value,
          $Res Function(PaymentReceivedNotification) _then) =
      _$PaymentReceivedNotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String connectionPubkey,
      String invoice,
      String? description,
      String? descriptionHash,
      String preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int? expiresAt,
      int settledAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PaymentReceivedNotificationCopyWithImpl<$Res>
    implements $PaymentReceivedNotificationCopyWith<$Res> {
  _$PaymentReceivedNotificationCopyWithImpl(this._self, this._then);

  final PaymentReceivedNotification _self;
  final $Res Function(PaymentReceivedNotification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? connectionPubkey = null,
    Object? invoice = null,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = null,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? settledAt = null,
    Object? metadata = freezed,
  }) {
    return _then(PaymentReceivedNotification(
      connectionPubkey: null == connectionPubkey
          ? _self.connectionPubkey
          : connectionPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      invoice: null == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHash: freezed == descriptionHash
          ? _self.descriptionHash
          : descriptionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      preimage: null == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      feesPaidSat: null == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      settledAt: null == settledAt
          ? _self.settledAt
          : settledAt // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PaymentSentNotification extends Notification {
  PaymentSentNotification(
      {required this.connectionPubkey,
      required this.invoice,
      this.description,
      this.descriptionHash,
      required this.preimage,
      required this.paymentHash,
      required this.amountSat,
      required this.feesPaidSat,
      required this.createdAt,
      this.expiresAt,
      required this.settledAt,
      final Map<String, dynamic>? metadata,
      final String? $type})
      : _metadata = metadata,
        $type = $type ?? 'paymentSent',
        super._();
  factory PaymentSentNotification.fromJson(Map<String, dynamic> json) =>
      _$PaymentSentNotificationFromJson(json);

  @override
  final String connectionPubkey;
  final String invoice;
  final String? description;
  final String? descriptionHash;
  final String preimage;
  final String paymentHash;
  final int amountSat;
  final int feesPaidSat;
  final int createdAt;
  final int? expiresAt;
  final int settledAt;
  final Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentSentNotificationCopyWith<PaymentSentNotification> get copyWith =>
      _$PaymentSentNotificationCopyWithImpl<PaymentSentNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentSentNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentSentNotification &&
            (identical(other.connectionPubkey, connectionPubkey) ||
                other.connectionPubkey == connectionPubkey) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionHash, descriptionHash) ||
                other.descriptionHash == descriptionHash) &&
            (identical(other.preimage, preimage) ||
                other.preimage == preimage) &&
            (identical(other.paymentHash, paymentHash) ||
                other.paymentHash == paymentHash) &&
            (identical(other.amountSat, amountSat) ||
                other.amountSat == amountSat) &&
            (identical(other.feesPaidSat, feesPaidSat) ||
                other.feesPaidSat == feesPaidSat) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.settledAt, settledAt) ||
                other.settledAt == settledAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      connectionPubkey,
      invoice,
      description,
      descriptionHash,
      preimage,
      paymentHash,
      amountSat,
      feesPaidSat,
      createdAt,
      expiresAt,
      settledAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'Notification.paymentSent(connectionPubkey: $connectionPubkey, invoice: $invoice, description: $description, descriptionHash: $descriptionHash, preimage: $preimage, paymentHash: $paymentHash, amountSat: $amountSat, feesPaidSat: $feesPaidSat, createdAt: $createdAt, expiresAt: $expiresAt, settledAt: $settledAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $PaymentSentNotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory $PaymentSentNotificationCopyWith(PaymentSentNotification value,
          $Res Function(PaymentSentNotification) _then) =
      _$PaymentSentNotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String connectionPubkey,
      String invoice,
      String? description,
      String? descriptionHash,
      String preimage,
      String paymentHash,
      int amountSat,
      int feesPaidSat,
      int createdAt,
      int? expiresAt,
      int settledAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$PaymentSentNotificationCopyWithImpl<$Res>
    implements $PaymentSentNotificationCopyWith<$Res> {
  _$PaymentSentNotificationCopyWithImpl(this._self, this._then);

  final PaymentSentNotification _self;
  final $Res Function(PaymentSentNotification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? connectionPubkey = null,
    Object? invoice = null,
    Object? description = freezed,
    Object? descriptionHash = freezed,
    Object? preimage = null,
    Object? paymentHash = null,
    Object? amountSat = null,
    Object? feesPaidSat = null,
    Object? createdAt = null,
    Object? expiresAt = freezed,
    Object? settledAt = null,
    Object? metadata = freezed,
  }) {
    return _then(PaymentSentNotification(
      connectionPubkey: null == connectionPubkey
          ? _self.connectionPubkey
          : connectionPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      invoice: null == invoice
          ? _self.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHash: freezed == descriptionHash
          ? _self.descriptionHash
          : descriptionHash // ignore: cast_nullable_to_non_nullable
              as String?,
      preimage: null == preimage
          ? _self.preimage
          : preimage // ignore: cast_nullable_to_non_nullable
              as String,
      paymentHash: null == paymentHash
          ? _self.paymentHash
          : paymentHash // ignore: cast_nullable_to_non_nullable
              as String,
      amountSat: null == amountSat
          ? _self.amountSat
          : amountSat // ignore: cast_nullable_to_non_nullable
              as int,
      feesPaidSat: null == feesPaidSat
          ? _self.feesPaidSat
          : feesPaidSat // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      settledAt: null == settledAt
          ? _self.settledAt
          : settledAt // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class CustomNotification extends Notification {
  CustomNotification(
      {required this.connectionPubkey,
      required this.notificationType,
      required final Map<String, dynamic> notification,
      final String? $type})
      : _notification = notification,
        $type = $type ?? 'custom',
        super._();
  factory CustomNotification.fromJson(Map<String, dynamic> json) =>
      _$CustomNotificationFromJson(json);

  @override
  final String connectionPubkey;
  final String notificationType;
  final Map<String, dynamic> _notification;
  Map<String, dynamic> get notification {
    if (_notification is EqualUnmodifiableMapView) return _notification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notification);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomNotificationCopyWith<CustomNotification> get copyWith =>
      _$CustomNotificationCopyWithImpl<CustomNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomNotification &&
            (identical(other.connectionPubkey, connectionPubkey) ||
                other.connectionPubkey == connectionPubkey) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, connectionPubkey,
      notificationType, const DeepCollectionEquality().hash(_notification));

  @override
  String toString() {
    return 'Notification.custom(connectionPubkey: $connectionPubkey, notificationType: $notificationType, notification: $notification)';
  }
}

/// @nodoc
abstract mixin class $CustomNotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory $CustomNotificationCopyWith(
          CustomNotification value, $Res Function(CustomNotification) _then) =
      _$CustomNotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String connectionPubkey,
      String notificationType,
      Map<String, dynamic> notification});
}

/// @nodoc
class _$CustomNotificationCopyWithImpl<$Res>
    implements $CustomNotificationCopyWith<$Res> {
  _$CustomNotificationCopyWithImpl(this._self, this._then);

  final CustomNotification _self;
  final $Res Function(CustomNotification) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? connectionPubkey = null,
    Object? notificationType = null,
    Object? notification = null,
  }) {
    return _then(CustomNotification(
      connectionPubkey: null == connectionPubkey
          ? _self.connectionPubkey
          : connectionPubkey // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _self.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _self._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

// dart format on
