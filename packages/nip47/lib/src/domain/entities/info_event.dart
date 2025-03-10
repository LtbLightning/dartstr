import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'info_event.freezed.dart';
part 'info_event.g.dart';

@freezed
sealed class InfoEvent with _$InfoEvent {
  const factory InfoEvent({
    required String walletServicePubkey,
    required List<Method> methods,
    List<NotificationType>? notifications,
    // For client-created connections in which the info event should be tagged with the client's pubkey
    String? clientPubkey,
    Uri? walletRelayUrl,
    List<String>? customMethods,
    List<String>? customNotifications,
  }) = _InfoEvent;
  const InfoEvent._();

  factory InfoEvent.fromJson(Map<String, dynamic> json) =>
      _$InfoEventFromJson(json);
}
