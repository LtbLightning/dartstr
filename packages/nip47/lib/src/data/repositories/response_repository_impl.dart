import 'dart:async';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/mappers/response_mapper.dart';
import 'package:nip47/src/data/models/event_subscription_model.dart';

class ResponseRepositoryImpl implements ResponseRepository {
  final NostrDataSource _nostrDataSource;
  final LocalResponseDataSource _localResponseDataSource;
  final LocalWalletConnectionDataSource _localWalletConnectionDataSource;
  final StreamController<ResponseEvent> _responseStreamController;
  // ignore: unused_field
  final Map<String, ResponseSubscriptionModel> _responseSubscriptions;
  // ignore: unused_field
  final Map<String, StreamSubscription> _subscriptionListeners;
  // ignore: unused_field
  final Map<String, nip01.KeyPair> _connectionClientKeyPairs;

  ResponseRepositoryImpl({
    required NostrDataSource nostrDataSource,
    required LocalResponseDataSource localResponseDataSource,
    required LocalWalletConnectionDataSource localWalletConnectionDataSource,
  })  : _nostrDataSource = nostrDataSource,
        _localResponseDataSource = localResponseDataSource,
        _localWalletConnectionDataSource = localWalletConnectionDataSource,
        _responseStreamController = StreamController<ResponseEvent>.broadcast(),
        _responseSubscriptions = {},
        _subscriptionListeners = {},
        _connectionClientKeyPairs = {};

  @override
  Stream<ResponseEvent> get responseStream => _responseStreamController.stream;

  @override
  Future<ResponseEvent> sendResponse({
    required Response response,
    required String walletServicePrivateKey,
    bool waitForOkMessage = true,
  }) async {
    final connection = await _localWalletConnectionDataSource
        .getConnectionFromRequest(response.requestId);
    if (connection == null) {
      throw Exception(
          'No connection found for requestId: ${response.requestId}');
    }
    final relays = connection.relays;

    final responseModel = ResponseMapper.modelFromEntity(response);

    final eventModel = await _nostrDataSource.publishResponseEvent(
      responseModel,
      authorPrivateKey: walletServicePrivateKey,
      relays: relays,
    );

    final event = ResponseMapper.modelToEntity(eventModel);

    return event;
  }

  @override
  // ignore: override_on_non_overriding_member
  Future<void> subscribeToResponses(
      {required String walletServicePubkey,
      required nip01.KeyPair clientKeyPair,
      List<String>? relayUrls}) {
    // TODO: implement subscribeToResponses
    throw UnimplementedError();
  }

  @override
  Future<ResponseEvent?> getResponseByRequestId(
      {required String requestId}) async {
    final model =
        await _localResponseDataSource.getResponseByRequestId(requestId);
    if (model == null) {
      return null;
    }
    return ResponseMapper.modelToEntity(model);
  }

  @override
  Future<List<ResponseEvent>> getResponses() async {
    final models = await _localResponseDataSource.getResponses();
    final responses =
        models.map((model) => ResponseMapper.modelToEntity(model)).toList();

    return responses;
  }

  @override
  Future<void> removeResponses({required String clientPubkey}) async {
    await _localResponseDataSource
        .removeClientConnectionResponses(clientPubkey);
  }
}
