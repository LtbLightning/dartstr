import 'package:freezed_annotation/freezed_annotation.dart';

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
}
