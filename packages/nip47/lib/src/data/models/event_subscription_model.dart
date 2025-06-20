import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';
import 'package:nip47/src/data/models/info_event_model.dart';
import 'package:nip47/src/data/models/request_model.dart';
import 'package:nip47/src/data/models/response_model.dart';

part 'generated/event_subscription_model.freezed.dart';

@freezed
sealed class EventSubscriptionModel with _$EventSubscriptionModel {
  const factory EventSubscriptionModel.request({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<RequestEventModel> requestStream,
    required List<String> relayUrls,
  }) = RequestSubscriptionModel;
  const factory EventSubscriptionModel.response({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<ResponseEventModel> responseStream,
    required List<String> relayUrls,
  }) = ResponseSubscriptionModel;
  const factory EventSubscriptionModel.infoEvent({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<InfoEventEventModel> infoEventStream,
    required List<String> relayUrls,
  }) = InfoEventSubscriptionModel;
  const EventSubscriptionModel._();
}
