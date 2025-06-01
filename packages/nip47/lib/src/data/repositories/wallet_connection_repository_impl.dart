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

  WalletConnectionRepositoryImpl({
    required LocalWalletConnectionDataSource localWalletConnectionDataSource,
  }) : _localWalletConnectionDataSource = localWalletConnectionDataSource;

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
    required String walletServicePubkey,
    required List<String> relays,
    required BudgetRenewal budgetRenewal,
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
    // Create the secret for the connection that will be used by the client to
    // sign and encrypt the messages
    final clientKeyPair = nip01.KeyPair.generate();
    log('Client pubkey: ${clientKeyPair.publicKey}');

    final connection = WalletConnectionModel(
      clientPubkey: clientKeyPair.publicKey,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      budgetRenewal: budgetRenewal.plaintext,
      createdAt: DateTime.now(),
      name: name,
      maxAmountSat: maxAmountSat,
      expiresAt: expiresAt != null
          ? DateTime.fromMillisecondsSinceEpoch(expiresAt)
          : null,
      methods: methods?.map((method) => method.plaintext).toList(),
      notifications:
          notifications?.map((notification) => notification.plaintext).toList(),
      customMethods: customMethods,
      customNotifications: customNotifications,
      isolated: isolated,
      categories: categories,
      lud16: lud16,
    );

    // Save the connection to the local data source
    await _localWalletConnectionDataSource.store(connection);

    // Generate and return the connection URI
    final connectionUri = WalletConnectConnectionUri(
      clientSecret: clientKeyPair.privateKey,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      lud16: lud16,
    );

    return connectionUri;
  }

  @override
  Future<WalletConnection> createClientCreatedConnection({
    required String clientPubkey,
    required String walletServicePubkey,
    required List<String> relays,
    required BudgetRenewal budgetRenewal,
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
    final connectionModel = WalletConnectionModel(
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      relays: relays,
      budgetRenewal: budgetRenewal.plaintext,
      createdAt: DateTime.now(),
      name: name,
      maxAmountSat: maxAmountSat,
      expiresAt: expiresAt != null
          ? DateTime.fromMillisecondsSinceEpoch(expiresAt)
          : null,
      methods: methods?.map((method) => method.plaintext).toList(),
      notifications:
          notifications?.map((notification) => notification.plaintext).toList(),
      customMethods: customMethods,
      customNotifications: customNotifications,
      isolated: isolated,
      categories: categories,
      lud16: lud16,
    );

    // Save the connection to the local data source
    await _localWalletConnectionDataSource.store(connectionModel);

    final connection = WalletConnectionMapper.modelToEntity(connectionModel);

    return connection;
  }

  @override
  Future<void> disconnect(String clientPubkey) async {
    // TODO: implement disconnect
    throw UnimplementedError();
  }

  @override
  Future<void> removeConnection(String clientPubkey) async {
    await _localWalletConnectionDataSource.removeConnection(clientPubkey);
    log('[WalletConnectionRepositoryImpl] Removed connection for client: $clientPubkey');
  }

  @override
  Future<void> resumeConnections({
    required List<nip01.KeyPair> walletServiceKeyPairs,
  }) {
    // TODO: implement resumeConnections
    throw UnimplementedError();
  }
}
