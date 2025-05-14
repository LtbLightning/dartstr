import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';

@freezed
sealed class EventModel with _$EventModel {
  const factory EventModel.request({
    required String id,
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required Map<String, dynamic> params,
    required DateTime createdAt,
    DateTime? expiresAt,
  }) = RequestEventModel;
  const factory EventModel.response({
    required String id,
    required String requestId,
    required String clientPubkey,
    required String resultType,
    Map<String, dynamic>? result,
    String? errorCode,
    String? errorMessage,
    // The id of the invoice or keysend from a multi-pay request
    String? multiId,
    required DateTime createdAt,
  }) = ResponseEventModel;
  const EventModel._();
}
