import 'dart:async';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/mappers/request_mapper.dart';
import 'package:nip47/src/data/models/connection_model.dart';
import 'package:nip47/src/data/models/event_subscription_model.dart';

class RequestRepositoryImpl implements RequestRepository {
  final NostrDataSource _nostrDataSource;
  final LocalRequestDataSource _localRequestDataSource;
  final LocalWalletConnectionDataSource _localWalletConnectionDataSource;
  final StreamController<RequestEvent> _requestStreamController;
  final Map<String, RequestSubscriptionModel> _requestSubscriptions;
  final Map<String, StreamSubscription> _subscriptionListeners;
  final Map<String, nip01.KeyPair> _connectionWalletServiceKeyPairs;

  RequestRepositoryImpl({
    required NostrDataSource nostrDataSource,
    required LocalRequestDataSource localRequestDataSource,
    required LocalWalletConnectionDataSource localWalletConnectionDataSource,
  })  : _nostrDataSource = nostrDataSource,
        _localRequestDataSource = localRequestDataSource,
        _localWalletConnectionDataSource = localWalletConnectionDataSource,
        _requestStreamController = StreamController<RequestEvent>.broadcast(),
        _requestSubscriptions = {},
        _subscriptionListeners = {},
        _connectionWalletServiceKeyPairs = {};

  @override
  Stream<RequestEvent> get requestStream => _requestStreamController.stream;

  @override
  Future<void> subscribeToRequests({
    required String clientPubkey,
    required nip01.KeyPair walletServiceKeyPair,
    List<String>? relayUrls,
  }) async {
    // Add the wallet service key pair to the map so we can use it later to
    // encrypt/decrypt event content
    _connectionWalletServiceKeyPairs[clientPubkey] = walletServiceKeyPair;

    final subscription = await _nostrDataSource.subscribeToRequests(
      clientPubkey: clientPubkey,
      walletServiceKeyPair: walletServiceKeyPair,
      relayUrls: relayUrls,
    );
    _requestSubscriptions[clientPubkey] = subscription;

    final streamSubscription = subscription.requestStream.listen(
      (event) async {
        try {
          final request = RequestMapper.modelToEntity(event);

          await _validateRequest(request);

          // Save the request to the local data source
          await _localRequestDataSource.storeRequest(event);
          _requestStreamController.add(request);
        } catch (e) {
          log('[RequestRepositoryImpl] Error processing request: $e');
          // TODO: Catch the error and send a specific error response event
        }
      },
      onError: (error) => log(
          '[RequestRepositoryImpl] onError listening to subscription: $error'),
    );
    _subscriptionListeners[subscription.subscriptionId] = streamSubscription;
  }

  @override
  Future<List<RequestEvent>> getRequests() async {
    final models = await _localRequestDataSource.getRequests();
    final requests =
        models.map((model) => RequestMapper.modelToEntity(model)).toList();

    return requests;
  }

  @override
  Future<void> removeRequests({
    required String clientPubkey,
  }) async {
    await _localRequestDataSource.removeClientConnectionRequests(clientPubkey);
    log('[RequestRepositoryImpl] Removed requests for client: $clientPubkey');
  }

  @override
  Future<void> unsubscribeFromRequests({
    required String clientPubkey,
  }) async {
    final subscription = _requestSubscriptions.remove(clientPubkey);
    if (subscription != null) {
      await _nostrDataSource.unsubscribeFromRequests(subscription);

      final streamSubscription =
          _subscriptionListeners[subscription.subscriptionId];
      if (streamSubscription != null) {
        await streamSubscription.cancel();
        _subscriptionListeners.remove(subscription.subscriptionId);
      }

      _connectionWalletServiceKeyPairs.remove(clientPubkey);
      log('[RequestRepositoryImpl] Unsubscribed from requests for client: $clientPubkey');
    } else {
      log('[RequestRepositoryImpl] No subscription found for client: $clientPubkey');
    }
  }

  Future<void> _validateRequest(RequestEvent requestEvent) async {
    final request = requestEvent.request;
    final clientPubkey = request.clientPubkey;
    WalletConnectionModel? connection =
        await _localWalletConnectionDataSource.getConnection(clientPubkey);

    if (connection == null) {
      log('[RequestRepositoryImpl] No connection found for client: $clientPubkey');
      throw Exception('No connection found for client: $clientPubkey');
    }

    if (request.expiresAt != null &&
        request.expiresAt!.isBefore(DateTime.now())) {
      log('[RequestRepositoryImpl] Request expired: $request');
      throw Exception('Request expired');
    }

    if (connection.isFrozen ?? false) {
      log('[RequestRepositoryImpl] Connection is frozen for client: $clientPubkey');
      throw Exception('Connection is frozen for client: $clientPubkey');
    }

    final permittedMethods = List.of(connection.methods ?? []);
    permittedMethods.addAll(connection.customMethods ?? []);
    if (!permittedMethods.contains(request.method)) {
      log('[RequestRepositoryImpl] Method not permitted: ${request.method} for client: $clientPubkey');
      throw Exception(
          'Method not permitted: ${request.method} for client: $clientPubkey');
    }
  }
}
