// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentReceivedNotification _$PaymentReceivedNotificationFromJson(
        Map<String, dynamic> json) =>
    PaymentReceivedNotification(
      connectionPubkey: json['connectionPubkey'] as String,
      invoice: json['invoice'] as String,
      description: json['description'] as String?,
      descriptionHash: json['descriptionHash'] as String?,
      preimage: json['preimage'] as String,
      paymentHash: json['paymentHash'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      feesPaidSat: (json['feesPaidSat'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      settledAt: (json['settledAt'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PaymentReceivedNotificationToJson(
        PaymentReceivedNotification instance) =>
    <String, dynamic>{
      'connectionPubkey': instance.connectionPubkey,
      'invoice': instance.invoice,
      'description': instance.description,
      'descriptionHash': instance.descriptionHash,
      'preimage': instance.preimage,
      'paymentHash': instance.paymentHash,
      'amountSat': instance.amountSat,
      'feesPaidSat': instance.feesPaidSat,
      'createdAt': instance.createdAt,
      'expiresAt': instance.expiresAt,
      'settledAt': instance.settledAt,
      'metadata': instance.metadata,
      'runtimeType': instance.$type,
    };

PaymentSentNotification _$PaymentSentNotificationFromJson(
        Map<String, dynamic> json) =>
    PaymentSentNotification(
      connectionPubkey: json['connectionPubkey'] as String,
      invoice: json['invoice'] as String,
      description: json['description'] as String?,
      descriptionHash: json['descriptionHash'] as String?,
      preimage: json['preimage'] as String,
      paymentHash: json['paymentHash'] as String,
      amountSat: (json['amountSat'] as num).toInt(),
      feesPaidSat: (json['feesPaidSat'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      settledAt: (json['settledAt'] as num).toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PaymentSentNotificationToJson(
        PaymentSentNotification instance) =>
    <String, dynamic>{
      'connectionPubkey': instance.connectionPubkey,
      'invoice': instance.invoice,
      'description': instance.description,
      'descriptionHash': instance.descriptionHash,
      'preimage': instance.preimage,
      'paymentHash': instance.paymentHash,
      'amountSat': instance.amountSat,
      'feesPaidSat': instance.feesPaidSat,
      'createdAt': instance.createdAt,
      'expiresAt': instance.expiresAt,
      'settledAt': instance.settledAt,
      'metadata': instance.metadata,
      'runtimeType': instance.$type,
    };

CustomNotification _$CustomNotificationFromJson(Map<String, dynamic> json) =>
    CustomNotification(
      connectionPubkey: json['connectionPubkey'] as String,
      notificationType: json['notificationType'] as String,
      notification: json['notification'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CustomNotificationToJson(CustomNotification instance) =>
    <String, dynamic>{
      'connectionPubkey': instance.connectionPubkey,
      'notificationType': instance.notificationType,
      'notification': instance.notification,
      'runtimeType': instance.$type,
    };
