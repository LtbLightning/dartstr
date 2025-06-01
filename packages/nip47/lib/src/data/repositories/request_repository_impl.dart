import 'dart:async';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/data_sources/local_request_data_source.dart';
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/mappers/request_mapper.dart';
import 'package:nip47/src/data/models/event_subscription_model.dart';
import 'package:nip47/src/domain/repositories/request_repository.dart';

class RequestRepositoryImpl implements RequestRepository {
  final NostrDataSource _nostrDataSource;
  final LocalRequestDataSource _localRequestDataSource;
  final StreamController<RequestEvent> _requestStreamController;
  final Map<String, RequestSubscriptionModel> _requestSubscriptions;
  final Map<String, StreamSubscription> _subscriptionListeners;
  final Map<String, nip01.KeyPair> _connectionWalletServiceKeyPairs;

  RequestRepositoryImpl({
    required NostrDataSource nostrDataSource,
    required LocalRequestDataSource localRequestDataSource,
  })  : _nostrDataSource = nostrDataSource,
        _localRequestDataSource = localRequestDataSource,
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
        final request = RequestMapper.modelToEntity(event);

        final isValid = _validateRequest(request);

        if (isValid) {
          // Save the request to the local data source
          await _localRequestDataSource.storeRequest(event);
          _requestStreamController.add(request);
        } else {
          // TODO: Handle invalid requests by putting them in a separate stream
          //  that can be picked up by a watcher service that can send an error
          //  response through the response repository
          log('[RequestRepositoryImpl] Invalid request: $request');
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

  bool _validateRequest(RequestEvent request) {
    // TODO: Implement request validation logic like expiry, known, active
    //  connection, permitted method, budget etc.
    return true;
  }
}
