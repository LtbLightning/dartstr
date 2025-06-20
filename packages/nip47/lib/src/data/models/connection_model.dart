import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'generated/connection_model.freezed.dart';

@freezed
sealed class ConnectionModel with _$ConnectionModel {
  const factory ConnectionModel.wallet({
    required String clientPubkey,
    required String walletServicePubkey,
    required List<String> relays,
    required String budgetRenewal,
    required DateTime createdAt,
    String? name,
    List<String>? clientRelays,
    DateTime? budgetRenewedAt,
    int? maxAmountSat,
    int? remainingAmountSat,
    DateTime? expiresAt,
    List<String>? methods,
    List<String>? customMethods,
    List<String>? notifications,
    List<String>? customNotifications,
    bool? isolated,
    bool? isFrozen,
    List<String>? categories,
    String? lud16,
  }) = WalletConnectionModel;
  const factory ConnectionModel.client({
    required String clientPubkey,
    required String walletServicePubkey,
    String? name,
    String? lud16,
  }) = ClientConnectionModel;
  const ConnectionModel._();

  bool get shouldRenewBudget {
    switch (this) {
      case WalletConnectionModel walletConnection:
        final budgetRenewal =
            BudgetRenewal.fromPlaintext(walletConnection.budgetRenewal);
        final budgetRenewedAt = walletConnection.budgetRenewedAt;
        switch (budgetRenewal) {
          case BudgetRenewal.daily:
            return budgetRenewedAt == null ||
                DateTime.now().difference(budgetRenewedAt).inDays >= 1;
          case BudgetRenewal.weekly:
            return budgetRenewedAt == null ||
                DateTime.now().difference(budgetRenewedAt).inDays >= 7;
          case BudgetRenewal.monthly:
            return budgetRenewedAt == null ||
                DateTime.now().difference(budgetRenewedAt).inDays >= 30;
          case BudgetRenewal.yearly:
            return budgetRenewedAt == null ||
                DateTime.now().difference(budgetRenewedAt).inDays >= 365;
          case BudgetRenewal.never:
            return false;
        }
      case ClientConnectionModel _:
        return false; // Clients do not have budgets to renew
    }
  }
}
