import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/mappers/info_event_mapper.dart';
import 'package:nip47/src/data/mappers/request_mapper.dart';
import 'package:nip47/src/data/mappers/response_mapper.dart';
import 'package:nip47/src/data/models/event_model.dart';

abstract class NostrDataSource {
  Stream<RequestEventModel> get requestStream;
  Future<({String eventId, List<String> relaysPublishedTo})> publishEvent(
    EventModel event, {
    required String authorPrivateKey,
    required List<String> relays,
  });
}

class NostrDataSourceImpl implements NostrDataSource {
  final nip01.PublishEventUseCase _publishEventUseCase;
  final nip01.WatchEventsUseCase _watchEventsUseCase;
  final Map<String, String> _walletServiceKeyPairs;

  NostrDataSourceImpl({
    required nip01.PublishEventUseCase publishEventUseCase,
    required nip01.WatchEventsUseCase watchEventsUseCase,
  })  : _publishEventUseCase = publishEventUseCase,
        _watchEventsUseCase = watchEventsUseCase,
        _walletServiceKeyPairs = {};

  @override
  Stream<RequestEventModel> get requestStream => _watchEventsUseCase
      .execute(kinds: [
        EventKind.request.kind,
      ])
      .where((event) =>
          event.event.pTag != null &&
          _walletServiceKeyPairs[event.event.pTag!] != null)
      .map((event) {
        final walletServicePublicKey = event.event.pTag!;
        final walletServicePrivateKey =
            _walletServiceKeyPairs[walletServicePublicKey]!;

        final requestEvent = RequestMapper.eventToModel(event.event,
            walletServicePrivateKey: walletServicePrivateKey);
        return requestEvent;
      });

  @override
  Future<({String eventId, List<String> relaysPublishedTo})> publishEvent(
    EventModel event, {
    required String authorPrivateKey,
    required List<String> relays,
    bool waitForOkMessage = true,
    int okMessageTimeOutSeconds = 10,
  }) async {
    final author = nip01.KeyPair.fromPrivateKey(privateKey: authorPrivateKey);
    final nip01Event = switch (event) {
      RequestEventModel() =>
        RequestMapper.modelToEvent(event, clientKeyPair: author),
      ResponseEventModel() =>
        ResponseMapper.modelToEvent(event, walletServiceKeyPair: author),
      InfoEventModel() =>
        InfoEventMapper.modelToEvent(event, walletServiceKeyPair: author),
    };

    final relayUrls = relays.map((relay) => Uri.parse(relay)).toList();
    final relaysPublishedTo = await _publishEventUseCase.execute(
      nip01Event,
      relayUrls: relayUrls,
      waitForOkMessage: waitForOkMessage,
      okMessageTimeOutSeconds: okMessageTimeOutSeconds,
    );

    return (eventId: nip01Event.id, relaysPublishedTo: relaysPublishedTo);
  }
}
