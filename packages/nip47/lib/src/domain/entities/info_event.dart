import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'info_event.freezed.dart';
part 'info_event.g.dart';

@freezed
sealed class InfoEvent with _$InfoEvent {
  const factory InfoEvent({
    required String relayUrl,
    required String walletServicePubkey,
    required List<Method> methods,
    List<NotificationType>? notifications,
  }) = _InfoEvent;
  const InfoEvent._();

  factory InfoEvent.fromJson(Map<String, dynamic> json) =>
      _$InfoEventFromJson(json);
}
