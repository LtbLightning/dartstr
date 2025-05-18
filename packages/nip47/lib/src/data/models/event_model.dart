import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'event_model.freezed.dart';

@freezed
sealed class EventModel with _$EventModel {
  const factory EventModel.request({
    String? id,
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required Map<String, dynamic> params,
    required DateTime createdAt,
    DateTime? expiresAt,
    String? relay,
  }) = RequestEventModel;
  const factory EventModel.response({
    String? id,
    required String requestId,
    required String clientPubkey,
    required String resultType,
    Map<String, dynamic>? result,
    String? errorCode,
    String? errorMessage,
    // The id of the invoice or keysend from a multi-pay request
    String? multiId,
    required DateTime createdAt,
    String? relay,
  }) = ResponseEventModel;
  const factory EventModel.info({
    String? id,
    required String walletServicePubkey,
    required List<String> methods,
    required DateTime createdAt,
    List<String>? notifications,
    String? clientPubkey,
    String? walletRelay,
    String? relay,
  }) = InfoEventModel;
  const EventModel._();

  int get createdAtEpoch => createdAt.millisecondsSinceEpoch ~/ 1000;

  int get kind => switch (this) {
        RequestEventModel() => EventKind.request.kind,
        ResponseEventModel() => EventKind.response.kind,
        InfoEventModel() => EventKind.info.kind,
      };
}
