import 'package:freezed_annotation/freezed_annotation.dart';

part 'eose_message.freezed.dart';

@freezed
sealed class EoseMessage with _$EoseMessage {
  const factory EoseMessage({
    required String relayUrl,
    required String subscriptionId,
  }) = _EoseMessage;
}
