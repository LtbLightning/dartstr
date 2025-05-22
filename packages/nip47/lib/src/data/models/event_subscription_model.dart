import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';
import 'package:nip47/src/data/models/event_model.dart';

part 'event_subscription_model.freezed.dart';

@freezed
sealed class EventSubscriptionModel with _$EventSubscriptionModel {
  const factory EventSubscriptionModel.request({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<RequestEventModel> requestStream,
    List<String>? relayUrls,
  }) = RequestSubscriptionModel;
  const factory EventSubscriptionModel.response({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<ResponseEventModel> responseStream,
    List<String>? relayUrls,
  }) = ResponseSubscriptionModel;
  const factory EventSubscriptionModel.infoEvent({
    required String subscriptionId,
    required List<Filters> filters,
    required Stream<InfoEventModel> infoEventStream,
    List<String>? relayUrls,
  }) = InfoEventSubscriptionModel;
  const EventSubscriptionModel._();
}
