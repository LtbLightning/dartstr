import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/notification.freezed.dart';

enum NotificationType {
  paymentReceived('payment_received'),
  paymentSent('payment_sent'),
  custom('custom');

  final String plaintext;

  const NotificationType(this.plaintext);

  static NotificationType fromPlaintext(String value) {
    switch (value) {
      case 'payment_received':
        return paymentReceived;
      case 'payment_sent':
        return paymentSent;
      default:
        return custom;
    }
  }
}

@freezed
sealed class Notification with _$Notification {
  const factory Notification.paymentReceived({
    required String connectionPubkey,
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
    required String connectionPubkey,
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
  factory Notification.custom({
    required String connectionPubkey,
    required String notificationType,
    required Map<String, dynamic> notification,
  }) = CustomNotification;
  const Notification._();
}
