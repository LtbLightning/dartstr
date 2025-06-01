import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/info_event_model.freezed.dart';

@freezed
sealed class InfoEventModel with _$InfoEventModel {
  const factory InfoEventModel({
    required String walletServicePubkey,
    required List<String> methods,
    List<String>? notifications,
    String? clientPubkey,
    String? walletRelay,
  }) = NewInfoEventModel;
  const factory InfoEventModel.event({
    required String walletServicePubkey,
    required List<String> methods,
    List<String>? notifications,
    String? clientPubkey,
    String? walletRelay,
    required String eventId,
    required DateTime createdAt,
    required List<String> relays,
  }) = InfoEventEventModel;
  const InfoEventModel._();
}
