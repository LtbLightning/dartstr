import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_message.freezed.dart';

@freezed
sealed class NoticeMessage with _$NoticeMessage {
  const factory NoticeMessage({
    required String relayUrl,
    required String message,
  }) = _NoticeMessage;
}
