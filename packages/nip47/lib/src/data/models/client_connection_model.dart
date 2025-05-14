import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/database/database.dart';

part 'client_connection_model.freezed.dart';

@freezed
sealed class ClientConnectionModel with _$ClientConnectionModel {
  const factory ClientConnectionModel({
    required String clientPubkey,
    required String name,
    required int walletServiceAccountIndex,
    required String walletServicePubkey,
    required List<String> relays,
    required List<String>? clientRelays,
    required String budgetRenewal,
    required int budgetRenewedAt,
    required int? maxAmountSat,
    required int? remainingAmountSat,
    required int? expiresAt,
    required List<String>? methods,
    required List<String>? customMethods,
    required List<String>? notifications,
    required List<String>? customNotifications,
    required bool isolated,
    required bool isFrozen,
    required List<String>? categories,
    required DateTime createdAt,
  }) = _ClientConnectionModel;
  const ClientConnectionModel._();

  ClientConnectionTable toTable() => ClientConnectionTable(
      clientPubkey: clientPubkey,
      name: name,
      walletServiceAccountIndex: walletServiceAccountIndex,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      clientRelays: clientRelays,
      budgetRenewal: budgetRenewal,
      budgetRenewedAt: budgetRenewedAt,
      maxAmountSat: maxAmountSat,
      remainingAmountSat: remainingAmountSat,
      expiresAt: expiresAt,
      methods: methods,
      customMethods: customMethods,
      notifications: notifications,
      customNotifications: customNotifications,
      isolated: isolated,
      isFrozen: isFrozen,
      categories: categories,
      createdAt: createdAt);
}

extension ClientConnectionTableX on ClientConnectionTable {
  ClientConnectionModel toClientConnectionModel() {
    return ClientConnectionModel(
      clientPubkey: clientPubkey,
      name: name,
      walletServiceAccountIndex: walletServiceAccountIndex,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      clientRelays: clientRelays,
      budgetRenewal: budgetRenewal,
      budgetRenewedAt: budgetRenewedAt,
      maxAmountSat: maxAmountSat,
      remainingAmountSat: remainingAmountSat,
      expiresAt: expiresAt,
      methods: methods,
      customMethods: customMethods,
      notifications: notifications,
      customNotifications: customNotifications,
      isolated: isolated,
      isFrozen: isFrozen,
      categories: categories,
      createdAt: createdAt,
    );
  }
}
