import 'dart:async';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/data_sources/local_wallet_connection_data_source.dart';
import 'package:nip47/src/data/mappers/wallet_connection_mapper.dart';
import 'package:nip47/src/data/models/connection_model.dart';
import 'package:nip47/src/domain/entities/connection.dart';
import 'package:nip47/src/domain/entities/connection_uri.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';
import 'package:nip47/src/domain/repositories/wallet_connection_repository.dart';

class WalletConnectionRepositoryImpl implements WalletConnectionRepository {
  final LocalWalletConnectionDataSource _localWalletConnectionDataSource;
  // TODO: Move this to RequestRepositoryImpl
  final Map<String, String> _walletServiceKeyPairs;
  final Map<String, StreamSubscription> _requestSubscriptions;

  WalletConnectionRepositoryImpl({
    required LocalWalletConnectionDataSource localWalletConnectionDataSource,
  })  : _localWalletConnectionDataSource = localWalletConnectionDataSource,
        _walletServiceKeyPairs = {},
        _requestSubscriptions = {};

  @override
  Future<List<WalletConnection>> getConnections() async {
    final connectionModels =
        await _localWalletConnectionDataSource.getConnections();

    final connections = connectionModels
        .map((model) => WalletConnectionMapper.modelToEntity(model))
        .toList();

    return connections;
  }

  @override
  Future<WalletConnectConnectionUri> createConnection({
    required walletServicePrivateKey,
    required String walletServicePubkey,
    required List<String> relays,
    required String budgetRenewal,
    String? name,
    List<String>? clientRelays,
    int? budgetRenewedAt,
    int? maxAmountSat,
    int? remainingAmountSat,
    int? expiresAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool? isolated,
    bool? isFrozen,
    List<String>? categories,
    String? lud16,
  }) async {
    final clientKeyPair = nip01.KeyPair.generate();
    log('Client pubkey: ${clientKeyPair.publicKey}');

    final connection = WalletConnectionModel(
      clientPubkey: clientKeyPair.publicKey,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      budgetRenewal: budgetRenewal,
      createdAt: DateTime.now(),
      name: name,
      clientRelays: clientRelays,
      budgetRenewedAt: budgetRenewedAt,
      maxAmountSat: maxAmountSat,
      remainingAmountSat: remainingAmountSat,
      expiresAt: expiresAt,
      methods: methods?.map((method) => method.plaintext).toList(),
      notifications:
          notifications?.map((notification) => notification.plaintext).toList(),
      customMethods: customMethods,
      customNotifications: customNotifications,
      isolated: isolated,
      isFrozen: isFrozen,
      categories: categories,
      lud16: lud16,
    );

    // Save the connection to the local data source
    await _localWalletConnectionDataSource.store(connection);

    await _subscribeAllConnections();

    try {
      await _publishInfoEvent(connection: connection);
    } catch (e) {
      log('Error publishing info event: $e');
    }

    final connectionUri = WalletConnectConnectionUri(
      clientSecret: clientKeyPair.privateKey,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      lud16: lud16,
    );

    return connectionUri;
  }

  @override
  Future<WalletConnection> connect(WalletAuthConnectionUri uri) {
    // TODO: implement connect
    throw UnimplementedError();
  }

  @override
  Future<void> disconnect(WalletConnection connection) {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  Future<void> removeConnection(String clientPubkey) {
    // TODO: implement removeConnection
    throw UnimplementedError();
  }
}
