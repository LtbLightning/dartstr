import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/entities.dart';

part 'client_message_model.freezed.dart';

enum ClientMessage {
  event('EVENT'), // used to publish events
  req('REQ'), // used to request events and subscribe to new updates
  close('CLOSE'); // used to stop a subscription

  final String value;

  const ClientMessage(this.value);

  factory ClientMessage.fromValue(String value) {
    return ClientMessage.values.firstWhere(
      (type) => type.value == value,
      orElse: () =>
          throw ArgumentError('Invalid client message type value: $value'),
    );
  }
}

@freezed
sealed class ClientMessageModel with _$ClientMessageModel {
  const factory ClientMessageModel({
    required String data,
  }) = _ClientMessageModel;
  const ClientMessageModel._();

  factory ClientMessageModel.event(SignedEvent event) {
    final eventJson = event.toJson();
    eventJson.remove('runtimeType');
    return ClientMessageModel(
        data: jsonEncode([
      ClientMessage.event.value,
      eventJson,
    ]));
  }
  factory ClientMessageModel.subscription(Subscription subscription) {
    return ClientMessageModel(
        data: jsonEncode([
      ClientMessage.req.value,
      subscription.id,
      if (subscription.filters != null)
        ...subscription.filters!.map((f) {
          final filterJson = f.toJson();
          filterJson.remove('runtimeType');
          return filterJson;
        }),
    ]));
  }
  factory ClientMessageModel.close(String subscriptionId) => ClientMessageModel(
      data: jsonEncode([ClientMessage.close.value, subscriptionId]));
}
