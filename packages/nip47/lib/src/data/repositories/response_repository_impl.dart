import 'dart:async';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/data_sources/local_response_data_source.dart';
import 'package:nip47/src/data/data_sources/local_wallet_connection_data_source.dart';
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/mappers/response_mapper.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/data/models/event_subscription_model.dart';
import 'package:nip47/src/domain/repositories/response_repository.dart';

class ResponseRepositoryImpl implements ResponseRepository {
  final NostrDataSource _nostrDataSource;
  final LocalResponseDataSource _localResponseDataSource;
  final LocalWalletConnectionDataSource _localWalletConnectionDataSource;
  final StreamController<Response> _responseStreamController;
  final Map<String, ResponseSubscriptionModel> _responseSubscriptions;
  final Map<String, StreamSubscription> _subscriptionListeners;
  final Map<String, nip01.KeyPair> _connectionClientKeyPairs;

  ResponseRepositoryImpl({
    required NostrDataSource nostrDataSource,
    required LocalResponseDataSource localResponseDataSource,
    required LocalWalletConnectionDataSource localWalletConnectionDataSource,
  })  : _nostrDataSource = nostrDataSource,
        _localResponseDataSource = localResponseDataSource,
        _localWalletConnectionDataSource = localWalletConnectionDataSource,
        _responseStreamController = StreamController<Response>.broadcast(),
        _responseSubscriptions = {},
        _subscriptionListeners = {},
        _connectionClientKeyPairs = {};

  @override
  Stream<Response> get responseStream => _responseStreamController.stream;

  @override
  Future<void> sendGetBalanceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required int balanceSat,
    bool waitForOkMessage = true,
  }) async {
    final connection = await _localWalletConnectionDataSource
        .getConnectionFromRequest(requestId);
    if (connection == null) {
      throw Exception('No connection found for requestId: $requestId');
    }
    final relays = connection.relays;

    final responseModel = ResponseEventModel(
      requestId: requestId,
      clientPubkey: connection.clientPubkey,
      resultType: 'get_balance',
      result: {
        'balance': balanceSat * 1000,
      },
      createdAt: DateTime.now(),
    );

    final result = await _nostrDataSource.publishEvent(
      responseModel,
      authorPrivateKey: walletServicePrivateKey,
      relays: relays,
    );

    final eventId = result.eventId;
    final relaysPublishedTo = result.relaysPublishedTo;

    final completeResponseModel = responseModel.copyWith(
      id: result.eventId,
      // TODO: change to list of relays in ResponseEventModel
      relay: relaysPublishedTo.isNotEmpty ? result.relaysPublishedTo[0] : null,
    );

    // Save the response to the local database
    await _localResponseDataSource.storeResponse(completeResponseModel);
  }

  @override
  Future<void> sendGetInfoResponse({
    required String requestId,
    required String walletServicePrivateKey,
    String? alias,
    String? color,
    String? pubkey,
    String? network,
    int? blockHeight,
    String? blockHash,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    bool waitForOkMessage = true,
  }) async {
    final connection = await _localWalletConnectionDataSource
        .getConnectionFromRequest(requestId);
    if (connection == null) {
      throw Exception('No connection found for requestId: $requestId');
    }
    final relays = connection.relays;

    final responseModel = ResponseEventModel(
      requestId: requestId,
      clientPubkey: connection.clientPubkey,
      resultType: 'get_info',
      result: {
        'alias': alias,
        'color': color,
        'pubkey': pubkey,
        'network': network,
        'block_height': blockHeight,
        'block_hash': blockHash,
        'methods': [
          ...methods?.map((e) => e.plaintext).toList() ?? [],
          ...customMethods ?? []
        ],
        'notifications': [
          ...notifications?.map((e) => e.plaintext).toList() ?? const [],
          ...customNotifications ?? []
        ],
      },
      createdAt: DateTime.now(),
    );

    final result = await _nostrDataSource.publishEvent(
      responseModel,
      authorPrivateKey: walletServicePrivateKey,
      relays: relays,
    );

    final eventId = result.eventId;
    final relaysPublishedTo = result.relaysPublishedTo;

    final completeResponseModel = responseModel.copyWith(
      id: result.eventId,
      // TODO: change to list of relays in ResponseEventModel
      relay: relaysPublishedTo.isNotEmpty ? result.relaysPublishedTo[0] : null,
    );

    // Save the response to the local database
    await _localResponseDataSource.storeResponse(completeResponseModel);
  }

  @override
  Future<void> sendLookupInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required TransactionType type,
    required String invoice,
    String? preimage,
    int? feesPaidSat,
    DateTime? settledAt,
    Map<String, dynamic>? metadata,
    bool waitForOkMessage = true,
  }) {
    // TODO: implement sendLookupInvoiceResponse
    throw UnimplementedError();
  }

  @override
  Future<void> sendMakeInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required String invoice,
    bool waitForOkMessage = true,
  }) {
    // TODO: implement sendMakeInvoiceResponse
    throw UnimplementedError();
  }

  @override
  Future<void> sendPayInvoiceResponse({
    required String requestId,
    required String walletServicePrivateKey,
    required String preimage,
    bool waitForOkMessage = true,
  }) {
    // TODO: implement sendPayInvoiceResponse
    throw UnimplementedError();
  }

  @override
  Future<void> subscribeToResponses(
      {required String walletServicePubkey,
      required nip01.KeyPair clientKeyPair,
      List<String>? relayUrls}) {
    // TODO: implement subscribeToResponses
    throw UnimplementedError();
  }

  @override
  Future<Response?> getResponseByRequestId({required String requestId}) async {
    final model =
        await _localResponseDataSource.getResponseByRequestId(requestId);
    if (model == null) {
      return null;
    }
    return ResponseMapper.modelToEntity(model);
  }

  @override
  Future<List<Response>> getResponses() async {
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
