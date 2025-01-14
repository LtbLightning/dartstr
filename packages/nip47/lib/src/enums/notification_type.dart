enum NotificationType {
  paymentReceived('payment_received'),
  paymentSent('payment_sent');

  final String notificationType;
  const NotificationType(this.notificationType);

  factory NotificationType.fromValue(String value) {
    return NotificationType.values.firstWhere(
      (kind) => kind.notificationType == value,
      orElse: () =>
          throw ArgumentError('Invalid notification type value: $value'),
    );
  }
}
