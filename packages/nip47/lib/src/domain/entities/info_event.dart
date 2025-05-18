import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'info_event.freezed.dart';

@freezed
sealed class InfoEvent with _$InfoEvent {
  const factory InfoEvent({
    required String id,
    required String walletServicePubkey,
    required String relay,
    required DateTime createdAt,
    List<Method>? methods,
    List<NotificationType>? notifications,
    // For wallet auth connections in which the info event should be tagged with the client's pubkey
    String? clientPubkey,
    String? walletRelay,
    List<String>? customMethods,
    List<String>? customNotifications,
  }) = _InfoEvent;
  const InfoEvent._();
}
