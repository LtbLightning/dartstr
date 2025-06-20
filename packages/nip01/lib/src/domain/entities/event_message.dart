import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';

part 'event_message.freezed.dart';

@freezed
sealed class EventMessage with _$EventMessage {
  const factory EventMessage({
    required String relayUrl,
    required String subscriptionId,
    required Event event,
  }) = _EventMessage;
  const EventMessage._();
}
