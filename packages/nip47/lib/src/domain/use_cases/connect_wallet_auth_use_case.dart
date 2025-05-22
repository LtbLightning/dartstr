import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/entities/connection_uri.dart';
import 'package:nip47/src/domain/repositories/info_event_repository.dart';
import 'package:nip47/src/domain/repositories/request_repository.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class ConnectWalletAuthUseCase {
  final WalletConnectionRepository _walletConnectionRepository;
  final RequestRepository _requestRepository;
  final InfoEventRepository _infoEventRepository;

  ConnectWalletAuthUseCase({
    required WalletConnectionRepository walletConnectionRepository,
    required RequestRepository requestRepository,
    required InfoEventRepository infoEventRepository,
  })  : _walletConnectionRepository = walletConnectionRepository,
        _requestRepository = requestRepository,
        _infoEventRepository = infoEventRepository;

  Future<WalletConnection> execute(
    WalletAuthConnectionUri walletAuthUri, {
    required nip01.KeyPair walletServiceKeyPair,
    String? walletRelay,
    BudgetRenewal? budgetRenewal,
    String? name,
    int? maxAmountSat,
    int? expiresAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool? isolated,
    List<String>? categories,
    String? lud16,
  }) async {
    try {
      final clientRelays = walletAuthUri.relays;
      final relays = walletRelay != null ? [walletRelay] : clientRelays;
      List<Method>? meths = methods ?? walletAuthUri.requestMethods;
      List<NotificationType>? notifs =
          notifications ?? walletAuthUri.notificationTypes;
      List<String>? customMeths =
          customMethods ?? walletAuthUri.customRequestMethods;
      List<String>? customNotifs =
          customNotifications ?? walletAuthUri.customNotificationTypes;

      final connection =
          await _walletConnectionRepository.createClientCreatedConnection(
        clientPubkey: walletAuthUri.clientPubkey,
        walletServicePubkey: walletServiceKeyPair.publicKey,
        relays: relays,
        budgetRenewal:
            budgetRenewal ?? walletAuthUri.budgetRenewal ?? BudgetRenewal.never,
        name: name ?? walletAuthUri.name,
        maxAmountSat: maxAmountSat ?? walletAuthUri.maxAmountSat,
        expiresAt: expiresAt ?? walletAuthUri.expiresAt,
        methods: meths,
        notifications: notifs,
        customMethods: customMeths,
        customNotifications: customNotifs,
        isolated: isolated ?? walletAuthUri.isolated,
        categories: categories,
        lud16: lud16,
      );

      await _requestRepository.subscribeToRequests(
        clientPubkey: walletAuthUri.clientPubkey,
        walletServiceKeyPair: walletServiceKeyPair,
        relayUrls: relays,
      );

      try {
        await _infoEventRepository.publish(
          walletServicePrivateKey: walletServiceKeyPair.privateKey,
          methods: meths ?? [],
          notifications: notifs ?? [],
          customMethods: customMeths ?? [],
          customNotifications: customNotifs ?? [],
          relays: clientRelays,
          clientPubkey: walletAuthUri.clientPubkey,
          walletRelay: walletRelay,
        );
      } catch (e) {
        log('Error publishing info event for walletServicePubkey ${walletServiceKeyPair.publicKey}: $e');
      }

      return connection;
    } catch (e) {
      log('[ConnectionWalletAuthUseCase]: $e');
      throw ConnectWalletAuthException('$e');
    }
  }
}

class ConnectWalletAuthException implements Exception {
  final String message;

  ConnectWalletAuthException(this.message);

  @override
  String toString() {
    return '[ConnectionWalletAuthUseCase]: $message';
  }
}
