import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart' show EventKind;
import 'package:nip47/src/data/mappers/info_event_mapper.dart';
import 'package:nip47/src/data/mappers/request_mapper.dart';
import 'package:nip47/src/data/mappers/response_mapper.dart';
import 'package:nip47/src/data/models/event_subscription_model.dart';
import 'package:nip47/src/data/models/info_event_model.dart';
import 'package:nip47/src/data/models/response_model.dart';

abstract class NostrDataSource {
  Future<InfoEventEventModel> publishInfoEvent(
    InfoEventModel infoEvent, {
    required String authorPrivateKey,
    required List<String> relays,
  });
  Future<ResponseEventModel> publishResponseEvent(
    ResponseModel response, {
    required String authorPrivateKey,
    required List<String> relays,
    bool waitForOkMessage = true,
    int okMessageTimeOutSeconds = 10,
  });
  Future<RequestSubscriptionModel> subscribeToRequests({
    required String clientPubkey,
    required nip01.KeyPair walletServiceKeyPair,
    List<String>? relayUrls,
  });
  Future<ResponseSubscriptionModel> subscribeToResponses({
    required nip01.KeyPair clientKeyPair,
    required String walletServicePubkey,
    List<String>? relayUrls,
  });
  Future<InfoEventSubscriptionModel> subscribeToClientRelayInfoEvents({
    required String clientPubkey,
    List<String>? relayUrls,
  });
  Future<InfoEventSubscriptionModel> subscribeToWalletRelayInfoEvents({
    required String walletServicePubkey,
    List<String>? relayUrls,
  });
}

class NostrDataSourceImpl implements NostrDataSource {
  final nip01.PublishEventUseCase _publishEventUseCase;
  final nip01.SubscribeUseCase _subscribeUseCase;

  NostrDataSourceImpl({
    required nip01.PublishEventUseCase publishEventUseCase,
    required nip01.SubscribeUseCase subscribeUseCase,
  })  : _publishEventUseCase = publishEventUseCase,
        _subscribeUseCase = subscribeUseCase;

  @override
  Future<InfoEventEventModel> publishInfoEvent(
    InfoEventModel infoEvent, {
    required String authorPrivateKey,
    required List<String> relays,
    bool waitForOkMessage = true,
    int okMessageTimeOutSeconds = 10,
  }) async {
    final author = nip01.KeyPair.fromPrivateKey(privateKey: authorPrivateKey);
    final nip01Event =
        InfoEventMapper.modelToEvent(infoEvent, walletServiceKeyPair: author);

    final relayUrls = relays.map((relay) => Uri.parse(relay)).toList();
    final relaysPublishedTo = await _publishEventUseCase.execute(
      nip01Event,
      relayUrls: relayUrls,
      waitForOkMessage: waitForOkMessage,
      okMessageTimeOutSeconds: okMessageTimeOutSeconds,
    );

    final eventModel =
        InfoEventMapper.modelFromEvent(nip01Event, {relays: relaysPublishedTo});

    return eventModel;
  }

  @override
  Future<ResponseEventModel> publishResponseEvent(
    ResponseModel response, {
    required String authorPrivateKey,
    required List<String> relays,
    bool waitForOkMessage = true,
    int okMessageTimeOutSeconds = 10,
  }) async {
    final author = nip01.KeyPair.fromPrivateKey(privateKey: authorPrivateKey);
    final nip01Event =
        ResponseMapper.modelToEvent(response, walletServiceKeyPair: author);
    final relayUrls = relays.map((relay) => Uri.parse(relay)).toList();
    final relaysPublishedTo = await _publishEventUseCase.execute(
      nip01Event,
      relayUrls: relayUrls,
      waitForOkMessage: waitForOkMessage,
      okMessageTimeOutSeconds: okMessageTimeOutSeconds,
    );

    final eventModel =
        ResponseMapper.modelFromEvent(nip01Event, {relays: relaysPublishedTo});

    return eventModel;
  }

  @override
  Future<RequestSubscriptionModel> subscribeToRequests({
    required String clientPubkey,
    required nip01.KeyPair walletServiceKeyPair,
    List<String>? relayUrls,
  }) async {
    final filters = [
      nip01.Filters(
        kinds: [EventKind.request.kind],
        authors: [clientPubkey],
        tags: {
          'p': [walletServiceKeyPair.publicKey],
        },
      ),
    ];

    final result = await _subscribeUseCase.execute(
      filters: filters,
      relayUrls: relayUrls,
    );

    return RequestSubscriptionModel(
      subscriptionId: result.subscription.id,
      filters: result.subscription.filters,
      requestStream: result.eventStream.map(
        (event) => RequestMapper.modelFromEventMessage(
          event,
          walletServicePrivateKey: walletServiceKeyPair.privateKey,
        ),
      ),
      relayUrls: result.subscription.relayUrls,
    );
  }

  @override
  Future<ResponseSubscriptionModel> subscribeToResponses({
    required nip01.KeyPair clientKeyPair,
    required String walletServicePubkey,
    List<String>? relayUrls,
  }) async {
    final filters = [
      nip01.Filters(
        kinds: [EventKind.response.kind],
        authors: [walletServicePubkey],
        tags: {
          'p': [clientKeyPair.publicKey],
        },
      ),
    ];

    final result = await _subscribeUseCase.execute(
      filters: filters,
      relayUrls: relayUrls,
    );

    return ResponseSubscriptionModel(
      subscriptionId: result.subscription.id,
      filters: result.subscription.filters,
      responseStream: result.eventStream.map(
        (event) => ResponseMapper.modelFromEventMessage(
          event,
          clientPrivateKey: clientKeyPair.privateKey,
        ),
      ),
      relayUrls: result.subscription.relayUrls,
    );
  }

  @override
  Future<InfoEventSubscriptionModel> subscribeToClientRelayInfoEvents({
    required String clientPubkey,
    List<String>? relayUrls,
  }) async {
    final filters = [
      nip01.Filters(
        kinds: [EventKind.info.kind],
        tags: {
          'p': [clientPubkey],
        },
      ),
    ];

    final result = await _subscribeUseCase.execute(
      filters: filters,
      relayUrls: relayUrls,
    );

    return InfoEventSubscriptionModel(
      subscriptionId: result.subscription.id,
      filters: result.subscription.filters,
      infoEventStream: result.eventStream.map(
        (event) => InfoEventMapper.modelFromEventMessage(event),
      ),
      relayUrls: result.subscription.relayUrls,
    );
  }

  @override
  Future<InfoEventSubscriptionModel> subscribeToWalletRelayInfoEvents({
    required String walletServicePubkey,
    List<String>? relayUrls,
  }) async {
    final filters = [
      nip01.Filters(
        kinds: [EventKind.info.kind],
        authors: [walletServicePubkey],
      ),
    ];

    final result = await _subscribeUseCase.execute(
      filters: filters,
      relayUrls: relayUrls,
    );

    return InfoEventSubscriptionModel(
      subscriptionId: result.subscription.id,
      filters: result.subscription.filters,
      infoEventStream: result.eventStream.map(
        (event) => InfoEventMapper.modelFromEventMessage(event),
      ),
      relayUrls: result.subscription.relayUrls,
    );
  }
}
