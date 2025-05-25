import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'generated/info_event.freezed.dart';

@freezed
sealed class InfoEvent with _$InfoEvent {
  const factory InfoEvent({
    required String walletServicePubkey,
    List<Method>? methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
    // For wallet auth connections in which the info event should be tagged with the client's pubkey
    String? clientPubkey,
    String? walletRelay,
  }) = _InfoEvent;
  const InfoEvent._();
}
