import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'generated/event.freezed.dart';

@freezed
sealed class Event with _$Event {
  const factory Event.request({
    required Request request,
    required String eventId,
    required DateTime createdAt,
    required List<String> relays,
  }) = RequestEvent;

  const factory Event.response({
    required Response response,
    required String eventId,
    required DateTime createdAt,
    required List<String> relays,
  }) = ResponseEvent;

  const factory Event.info({
    required InfoEvent infoEvent,
    required String eventId,
    required DateTime createdAt,
    required List<String> relays,
  }) = InfoEventEvent;

  const Event._();
}
