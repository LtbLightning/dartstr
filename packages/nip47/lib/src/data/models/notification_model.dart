import 'dart:convert';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/src/domain/entities/notification.dart';
import 'package:nip47/src/enums/event_kind.dart';

class NotificationModel {
  final String connectionPubkey;
  final String notificationType;
  final Map<String, dynamic>? notification;

  const NotificationModel({
    required this.connectionPubkey,
    required this.notificationType,
    this.notification,
  });

  factory NotificationModel.fromEntity(Notification entity) {
    switch (entity) {
      case PaymentReceivedNotification notification:
        return NotificationModel(
          connectionPubkey: notification.connectionPubkey,
          notificationType: NotificationType.paymentReceived.value,
          notification: {
            "type": "incoming",
            "invoice": notification.invoice, // encoded invoice
            "description":
                notification.description, // invoice's description, optional
            "description_hash": notification
                .descriptionHash, // invoice's description hash, optional
            "preimage": notification.preimage, // payment's preimage
            "payment_hash":
                notification.paymentHash, // Payment hash for the payment
            "amount": notification.amountSat * 1000, // value in msats
            "fees_paid": notification.feesPaidSat * 1000, // value in msats
            "created_at":
                notification.createdAt, // invoice/payment creation time
            "expires_at": notification
                .expiresAt, // invoice expiration time, optional if not applicable
            "settled_at":
                notification.settledAt, // invoice/payment settlement time
            "metadata": notification.metadata ??
                {} // generic metadata that can be used to add things like zap/boostagram details for a payer name/comment/etc.
          },
        );
      case PaymentSentNotification notification:
        return NotificationModel(
          connectionPubkey: notification.connectionPubkey,
          notificationType: NotificationType.paymentSent.value,
          notification: {
            "type": "outgoing",
            "invoice": notification.invoice, // encoded invoice
            "description":
                notification.description, // invoice's description, optional
            "description_hash": notification
                .descriptionHash, // invoice's description hash, optional
            "preimage": notification.preimage, // payment's preimage
            "payment_hash":
                notification.paymentHash, // Payment hash for the payment
            "amount": notification.amountSat * 1000, // value in msats
            "fees_paid": notification.feesPaidSat * 1000, // value in msats
            "created_at":
                notification.createdAt, // invoice/payment creation time
            "expires_at": notification
                .expiresAt, // invoice expiration time, optional if not applicable
            "settled_at":
                notification.settledAt, // invoice/payment settlement time
            "metadata": notification.metadata ??
                {} // generic metadata that can be used to add things like zap/boostagram details for a payer name/comment/etc.
          },
        );
      case CustomNotification notification:
        return NotificationModel(
          connectionPubkey: notification.connectionPubkey,
          notificationType: notification.notificationType,
          notification: notification.notification,
        );
    }
  }

  factory NotificationModel.fromEvent(nip01.SignedEvent event,
      {required String clientPrivateKey}) {
    final content = Nip04.decrypt(
      event.content,
      clientPrivateKey,
      event.pubkey,
    );
    final notification = jsonDecode(content) as Map<String, dynamic>;
    final pTag = event.tags.firstWhere((tag) => tag[0] == 'p');

    return NotificationModel(
      connectionPubkey: pTag[1],
      notificationType: notification['notification_type'],
      notification: notification['notification'],
    );
  }

  Notification toEntity() {
    final type = NotificationType.fromValue(notificationType);
    switch (type) {
      case NotificationType.paymentReceived:
        return PaymentReceivedNotification(
          connectionPubkey: connectionPubkey,
          invoice: notification!['invoice'],
          description: notification!['description'],
          descriptionHash: notification!['description_hash'],
          preimage: notification!['preimage'],
          paymentHash: notification!['payment_hash'],
          amountSat: notification!['amount'] ~/ 1000,
          feesPaidSat: notification!['fees_paid'] ~/ 1000,
          createdAt: notification!['created_at'],
          expiresAt: notification!['expires_at'],
          settledAt: notification!['settled_at'],
          metadata: notification!['metadata'],
        );
      case NotificationType.paymentSent:
        return PaymentSentNotification(
          connectionPubkey: connectionPubkey,
          invoice: notification!['invoice'],
          description: notification!['description'],
          descriptionHash: notification!['description_hash'],
          preimage: notification!['preimage'],
          paymentHash: notification!['payment_hash'],
          amountSat: notification!['amount'] ~/ 1000,
          feesPaidSat: notification!['fees_paid'] ~/ 1000,
          createdAt: notification!['created_at'],
          expiresAt: notification!['expires_at'],
          settledAt: notification!['settled_at'],
          metadata: notification!['metadata'],
        );
      default:
        return CustomNotification(
          connectionPubkey: connectionPubkey,
          notificationType: notificationType,
          notification: notification ?? {},
        );
    }
  }

  nip01.SignedEvent toEvent({
    required nip01.KeyPair walletServiceKeyPair,
  }) {
    final content = jsonEncode(
      {
        'notification_type': notificationType,
        if (notification != null) 'notification': notification,
      },
    );
    final encryptedContent = Nip04.encrypt(
      content,
      walletServiceKeyPair.privateKey,
      connectionPubkey,
    );

    final event = nip01.UnsignedEvent(
      pubkey: walletServiceKeyPair.publicKey,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.response.value,
      tags: [
        ['p', connectionPubkey],
      ],
      content: encryptedContent,
    );

    final signedEvent = event.sign(walletServiceKeyPair);

    return signedEvent;
  }
}
