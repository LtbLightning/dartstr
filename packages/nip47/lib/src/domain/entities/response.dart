import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'response.freezed.dart';

enum Network {
  mainnet(plaintext: 'mainnet'),
  testnet(plaintext: 'testnet'),
  signet(plaintext: 'signet'),
  regtest(plaintext: 'regtest');

  final String plaintext;

  const Network({required this.plaintext});
}

@freezed
sealed class Response with _$Response {
  const factory Response.getInfo({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    @Default('') String alias,
    @Default('') String color,
    @Default('') String pubkey,
    @Default(Network.mainnet) Network network,
    int? blockHeight,
    @Default('') String blockHash,
    @Default([]) List<Method> methods,
    @Default([]) List<String> customMethods,
    @Default([]) List<NotificationType> notifications,
    @Default([]) List<String> customNotifications,
  }) = GetInfoResponse;
  const factory Response.getBalance({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required int balanceSat,
  }) = GetBalanceResponse;
  const factory Response.payInvoice({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String preimage,
    int? feesPaidSat,
  }) = PayInvoiceResponse;
  const factory Response.error({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required ErrorCode errorCode,
    String? errorMessage,
  }) = ErrorResponse;

  const Response._();
}

@freezed
sealed class ResponseEvent with _$ResponseEvent {
  const factory ResponseEvent(
    Response response, {
    required String eventId,
    required List<String> relays,
    required DateTime createdAt,
  }) = _ResponseEvent;

  const ResponseEvent._();
}
