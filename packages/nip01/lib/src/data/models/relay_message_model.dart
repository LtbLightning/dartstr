import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/data/models/event_model.dart';

part 'relay_message_model.freezed.dart';

enum RelayMessage {
  event('EVENT'), // used to send events requested by clients
  ok('OK'), // used to indicate acceptance or denial of an EVENT message
  eose(
    'EOSE',
  ), // used to indicate the end of stored events and the beginning of events newly received in real-time
  closed(
    'CLOSED',
  ), // used to indicate that a subscription was ended on the server side
  notice(
    'NOTICE',
  ); // used to send human-readable error messages or other things to clients

  final String plainText;

  const RelayMessage(this.plainText);

  factory RelayMessage.fromPlainText(String text) {
    return RelayMessage.values.firstWhere(
      (type) => type.plainText == text,
      orElse: () =>
          throw ArgumentError('Invalid relay message type value: $text'),
    );
  }
}

@freezed
sealed class RelayMessageModel with _$RelayMessageModel {
  const RelayMessageModel._(); // Private constructor for custom methods

  /// RelayEventMessage: Contains an event
  const factory RelayMessageModel.event({
    required String relayUrl,
    required String subscriptionId,
    required EventModel event,
  }) = RelayEventMessageModel;

  /// RelayOkMessage: Acknowledges an event
  const factory RelayMessageModel.ok({
    required String relayUrl,
    required String eventId,
    required bool accepted,
    required String message,
  }) = RelayOkMessageModel;

  /// RelayEndOfStreamMessage: Indicates end of stored events
  const factory RelayMessageModel.eose({
    required String relayUrl,
    required String subscriptionId,
  }) = RelayEoseMessageModel;

  /// RelayClosedMessage: Subscription ended on the server side
  const factory RelayMessageModel.closed({
    required String relayUrl,
    required String subscriptionId,
    required String message,
  }) = RelayClosedMessageModel;

  /// RelayNoticeMessage: Sends human-readable error messages or notices
  const factory RelayMessageModel.notice({
    required String relayUrl,
    required String message,
  }) = RelayNoticeMessageModel;

  /// Parses a Relay message from a raw string (instead of manual parsing)
  factory RelayMessageModel.fromString(String message,
      {required String relayUrl}) {
    final decoded = jsonDecode(message);
    if (decoded is List && decoded.isNotEmpty) {
      final type = RelayMessage.fromPlainText(decoded[0]);
      switch (type) {
        case RelayMessage.event:
          return RelayMessageModel.event(
            relayUrl: relayUrl,
            subscriptionId: decoded[1],
            event: EventModel.fromJson(decoded[2]),
          );
        case RelayMessage.ok:
          return RelayMessageModel.ok(
            relayUrl: relayUrl,
            eventId: decoded[1],
            accepted: decoded[2],
            message: decoded[3],
          );
        case RelayMessage.eose:
          return RelayMessageModel.eose(
            relayUrl: relayUrl,
            subscriptionId: decoded[1],
          );
        case RelayMessage.closed:
          return RelayMessageModel.closed(
            relayUrl: relayUrl,
            subscriptionId: decoded[1],
            message: decoded[2],
          );
        case RelayMessage.notice:
          return RelayMessageModel.notice(
            relayUrl: relayUrl,
            message: decoded[1],
          );
      }
    }
    throw ArgumentError('Invalid message format');
  }
}
