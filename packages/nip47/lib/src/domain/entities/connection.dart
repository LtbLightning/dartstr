import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'generated/connection.freezed.dart';

enum BudgetRenewal {
  never('never'),
  daily('daily'),
  weekly('weekly'),
  monthly('monthly'),
  yearly('yearly');

  final String plaintext;

  const BudgetRenewal(this.plaintext);

  static BudgetRenewal fromPlaintext(String plaintext) {
    return BudgetRenewal.values.firstWhere(
      (renewal) => renewal.plaintext == plaintext,
      orElse: () => BudgetRenewal.never,
    );
  }
}

@freezed
sealed class Connection with _$Connection {
  const factory Connection.wallet({
    required String walletServicePubkey,
    required String clientPubkey,
    required List<String> relays,
    required BudgetRenewal budgetRenewal,
    required DateTime createdAt,
    String? name,
    List<String>? clientRelays,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    DateTime? budgetRenewedAt,
    int? maxAmountSat,
    int? remainingAmountSat,
    DateTime? expiresAt,
    bool? isolated,
    bool? isFrozen,
    List<String>? categories,
    String? lud16,
  }) = WalletConnection;
  const factory Connection.client({
    required String clientPubkey,
    required String walletServicePubkey,
    required List<String> relays,
    String? name,
    Uri? icon,
    Uri? returnTo,
    int? expiresAt,
    int? maxAmountSat,
    BudgetRenewal? budgetRenewal,
    List<Method>? requestMethods,
    List<NotificationType>? notificationTypes,
    bool? isolated,
    Object? metadata,
    List<String>? customRequestMethods,
    List<String>? customNotificationTypes,
  }) = ClientConnection;
  const Connection._();
}
