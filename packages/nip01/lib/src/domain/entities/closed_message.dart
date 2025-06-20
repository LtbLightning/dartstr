import 'package:freezed_annotation/freezed_annotation.dart';

part 'closed_message.freezed.dart';

@freezed
sealed class ClosedMessage with _$ClosedMessage {
  const factory ClosedMessage({
    required String relayUrl,
    required String subscriptionId,
    required String message,
  }) = _ClosedMessage;
  const ClosedMessage._();
}
