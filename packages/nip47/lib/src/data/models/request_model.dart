import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/request_model.freezed.dart';

@freezed
sealed class RequestModel with _$RequestModel {
  const factory RequestModel({
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required Map<String, dynamic> params,
    DateTime? expiresAt,
  }) = NewRequestModel;
  const factory RequestModel.event({
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required Map<String, dynamic> params,
    DateTime? expiresAt,
    required String eventId,
    required List<String> relays,
    required DateTime createdAt,
  }) = RequestEventModel;
  const RequestModel._();
}
