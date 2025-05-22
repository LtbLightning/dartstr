import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/domain/entities/connection_uri.dart';
import 'package:nip47/src/domain/repositories/info_event_repository.dart';
import 'package:nip47/src/domain/repositories/request_repository.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class CreateWalletConnectionUseCase {
  final WalletConnectionRepository _walletConnectionRepository;
  final InfoEventRepository _infoEventRepository;
  final RequestRepository _requestRepository;

  CreateWalletConnectionUseCase({
    required WalletConnectionRepository walletConnectionRepository,
    required InfoEventRepository infoEventRepository,
    required RequestRepository requestRepository,
  })  : _walletConnectionRepository = walletConnectionRepository,
        _infoEventRepository = infoEventRepository,
        _requestRepository = requestRepository;

  Future<WalletConnectConnectionUri> execute({
    required nip01.KeyPair walletServiceKeyPair,
    required List<Uri> relays,
    BudgetRenewal budgetRenewal = BudgetRenewal.never,
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
      final relayUrls = relays.map((e) => e.toString()).toList();
      final connectionUri = await _walletConnectionRepository.createConnection(
        walletServicePubkey: walletServiceKeyPair.publicKey,
        relays: relayUrls,
        budgetRenewal: budgetRenewal,
        name: name,
        maxAmountSat: maxAmountSat,
        expiresAt: expiresAt,
        methods: methods,
        notifications: notifications,
        customMethods: customMethods,
        customNotifications: customNotifications,
        isolated: isolated,
        categories: categories,
        lud16: lud16,
      );

      await _requestRepository.subscribeToRequests(
        clientPubkey: connectionUri.clientPubkey,
        walletServiceKeyPair: walletServiceKeyPair,
        relayUrls: relayUrls,
      );

      try {
        await _infoEventRepository.publish(
          walletServicePrivateKey: walletServiceKeyPair.privateKey,
          methods: methods ?? [],
          notifications: notifications ?? [],
          customMethods: customMethods ?? [],
          customNotifications: customNotifications ?? [],
          relays: relayUrls,
        );
      } catch (e) {
        log('Error publishing info event for walletServicePubkey ${connectionUri.walletServicePubkey}: $e');
      }

      return connectionUri;
    } catch (e) {
      throw CreateWalletConnectionUseCaseException('$e');
    }
  }
}

class CreateWalletConnectionUseCaseException implements Exception {
  final String message;

  CreateWalletConnectionUseCaseException(this.message);

  @override
  String toString() {
    return '[CreateWalletConnectionUseCase]: $message';
  }
}
