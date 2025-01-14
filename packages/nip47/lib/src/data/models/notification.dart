import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/src/enums/event_kind.dart';
import 'package:nip47/src/enums/notification_type.dart';

sealed class Notification extends Equatable {
  final String notificationType;
  final Map<String, dynamic>? notification;

  const Notification({
    required this.notificationType,
    this.notification,
  });

  factory Notification.paymentReceived({
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
  }) = PaymentReceivedNotification;

  factory Notification.paymentSent({
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
  }) = PaymentSentNotification;

  nip01.Event toSignedEvent({
    required nip01.KeyPair creatorKeyPair,
    required String connectionPubkey,
  }) {
    final content = jsonEncode(
      {
        'notification_type': notificationType,
        if (notification != null) 'notification': notification,
      },
    );
    final encryptedContent = Nip04.encrypt(
      content,
      creatorKeyPair.privateKey,
      connectionPubkey,
    );

    final partialEvent = nip01.Event(
      pubkey: creatorKeyPair.publicKey,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.response.value,
      tags: [
        ['p', connectionPubkey],
      ],
      content: encryptedContent,
    );

    final signedEvent = partialEvent.sign(creatorKeyPair);

    return signedEvent;
  }

  @override
  List<Object?> get props => [notificationType, notification];
}

// Standard responses

// Subclass for the payment_received notification
@immutable
class PaymentReceivedNotification extends Notification {
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
  final Map<String, dynamic>? metadata;

  PaymentReceivedNotification({
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
    this.metadata,
  }) : super(
          notificationType: NotificationType.paymentReceived.notificationType,
          notification: {
            "type": "incoming",
            "invoice": invoice, // encoded invoice
            "description": description, // invoice's description, optional
            "description_hash":
                descriptionHash, // invoice's description hash, optional
            "preimage": preimage, // payment's preimage
            "payment_hash": paymentHash, // Payment hash for the payment
            "amount": amountSat * 1000, // value in msats
            "fees_paid": feesPaidSat * 1000, // value in msats
            "created_at": createdAt, // invoice/payment creation time
            "expires_at":
                expiresAt, // invoice expiration time, optional if not applicable
            "settled_at": settledAt, // invoice/payment settlement time
            "metadata": metadata ??
                {} // generic metadata that can be used to add things like zap/boostagram details for a payer name/comment/etc.
          },
        );

  @override
  List<Object?> get props => [
        ...super.props,
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
        metadata,
      ];
}

// Subclass for the get_balance response
@immutable
class PaymentSentNotification extends Notification {
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
  final Map<String, dynamic>? metadata;

  PaymentSentNotification({
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
    this.metadata,
  }) : super(
          notificationType: NotificationType.paymentReceived.notificationType,
          notification: {
            "type": "outgoing",
            "invoice": invoice, // encoded invoice
            "description": description, // invoice's description, optional
            "description_hash":
                descriptionHash, // invoice's description hash, optional
            "preimage": preimage, // payment's preimage
            "payment_hash": paymentHash, // Payment hash for the payment
            "amount": amountSat * 1000, // value in msats
            "fees_paid": feesPaidSat * 1000, // value in msats
            "created_at": createdAt, // invoice/payment creation time
            "expires_at":
                expiresAt, // invoice expiration time, optional if not applicable
            "settled_at": settledAt, // invoice/payment settlement time
            "metadata": metadata ??
                {} // generic metadata that can be used to add things like zap/boostagram details for a payer name/comment/etc.
          },
        );

  @override
  List<Object?> get props => [
        ...super.props,
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
        metadata,
      ];
}

// Custom responses
class CustomNotification extends Notification {
  const CustomNotification({
    required super.notificationType,
    super.notification,
  });
}
