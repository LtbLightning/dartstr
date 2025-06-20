import 'package:freezed_annotation/freezed_annotation.dart';

part 'ok_message.freezed.dart';

@freezed
sealed class OkMessage with _$OkMessage {
  const factory OkMessage({
    required String relayUrl,
    required String eventId,
    required bool accepted,
    required String message,
  }) = _OkMessage;
}
