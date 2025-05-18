import 'package:nip47/src/data/models/connection_model.dart';
import 'package:nip47/src/database/database.dart';
import 'package:nip47/src/domain/entities/entities.dart';

class WalletConnectionMapper {
  static WalletConnection modelToEntity(WalletConnectionModel model,
      {required String walletServicePrivateKey}) {
    return WalletConnection(
      walletServicePrivateKey: walletServicePrivateKey,
      walletServicePubkey: model.walletServicePubkey,
      clientPubkey: model.clientPubkey,
      relays: model.relays,
      budgetRenewal: BudgetRenewal.fromPlaintext(model.budgetRenewal),
      createdAt: model.createdAt,
      name: model.name,
      clientRelays: model.clientRelays,
      methods:
          model.methods?.map((method) => Method.fromPlaintext(method)).toList(),
      notifications: model.notifications
          ?.map((notification) => NotificationType.fromPlaintext(notification))
          .toList(),
      customMethods: model.customMethods,
      customNotifications: model.customNotifications,
      budgetRenewedAt: model.budgetRenewedAt,
      maxAmountSat: model.maxAmountSat,
      remainingAmountSat: model.remainingAmountSat,
      expiresAt: model.expiresAt,
      isolated: model.isolated,
      isFrozen: model.isFrozen,
      categories: model.categories,
      lud16: model.lud16,
    );
  }

  static WalletConnectionModel entityToModel(WalletConnection entity) {
    return WalletConnectionModel(
      clientPubkey: entity.clientPubkey,
      walletServicePubkey: entity.walletServicePubkey,
      relays: entity.relays,
      budgetRenewal: entity.budgetRenewal.plaintext,
      createdAt: entity.createdAt,
      name: entity.name,
      clientRelays: entity.clientRelays,
      budgetRenewedAt: entity.budgetRenewedAt,
      maxAmountSat: entity.maxAmountSat,
      remainingAmountSat: entity.remainingAmountSat,
      expiresAt: entity.expiresAt,
      methods: entity.methods?.map((method) => method.plaintext).toList(),
      customMethods: entity.customMethods,
      notifications: entity.notifications
          ?.map((notification) => notification.plaintext)
          .toList(),
      customNotifications: entity.customNotifications,
      isolated: entity.isolated,
      isFrozen: entity.isFrozen,
      categories: entity.categories,
      lud16: entity.lud16,
    );
  }

  static WalletConnectionTable modelToTable(WalletConnectionModel model) {
    return WalletConnectionTable(
      clientPubkey: model.clientPubkey,
      name: model.name,
      walletServicePubkey: model.walletServicePubkey,
      relays: model.relays,
      clientRelays: model.clientRelays,
      budgetRenewal: model.budgetRenewal,
      budgetRenewedAt: model.budgetRenewedAt,
      maxAmountSat: model.maxAmountSat,
      remainingAmountSat: model.remainingAmountSat,
      expiresAt: model.expiresAt,
      methods: model.methods,
      customMethods: model.customMethods,
      notifications: model.notifications,
      customNotifications: model.customNotifications,
      isolated: model.isolated,
      isFrozen: model.isFrozen,
      categories: model.categories,
      createdAt: model.createdAt,
    );
  }

  static WalletConnectionModel modelFromTable(WalletConnectionTable table) {
    return WalletConnectionModel(
      clientPubkey: table.clientPubkey,
      name: table.name,
      walletServicePubkey: table.walletServicePubkey,
      relays: table.relays,
      clientRelays: table.clientRelays,
      budgetRenewal: table.budgetRenewal,
      budgetRenewedAt: table.budgetRenewedAt,
      maxAmountSat: table.maxAmountSat,
      remainingAmountSat: table.remainingAmountSat,
      expiresAt: table.expiresAt,
      methods: table.methods,
      customMethods: table.customMethods,
      notifications: table.notifications,
      customNotifications: table.customNotifications,
      isolated: table.isolated,
      isFrozen: table.isFrozen,
      categories: table.categories,
      createdAt: table.createdAt,
    );
  }
}
