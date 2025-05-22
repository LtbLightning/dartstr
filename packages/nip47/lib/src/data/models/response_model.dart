import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';

@freezed
sealed class ResponseModel with _$ResponseModel {
  const factory ResponseModel.getInfo({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    @Default('') String alias,
    @Default('') String color,
    @Default('') String pubkey,
    @Default('mainnet') String network,
    int? blockHeight,
    @Default('') String blockHash,
    @Default([]) List<String> methods,
    @Default([]) List<String> notifications,
  }) = GetInfoResponseModel;
  const factory ResponseModel.getBalance({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required int balanceMsat,
  }) = GetBalanceResponseModel;
  const factory ResponseModel.payInvoice({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String preimage,
    int? feesPaidMsat,
  }) = PayInvoiceResponseModel;
  const factory ResponseModel.error({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String resultType,
    required String errorCode,
    required String errorMessage,
  }) = ErrorResponseModel;
  const ResponseModel._();

  String get resultType => switch (this) {
        GetInfoResponseModel() => 'get_info',
        GetBalanceResponseModel() => 'get_balance',
        PayInvoiceResponseModel() => 'pay_invoice',
        ErrorResponseModel(resultType: final resultType) => resultType,
      };

  Map<String, dynamic>? get result => switch (this) {
        GetInfoResponseModel(
          alias: final alias,
          color: final color,
          pubkey: final pubkey,
          network: final network,
          blockHeight: final blockHeight,
          blockHash: final blockHash,
          methods: final methods,
          notifications: final notifications
        ) =>
          {
            'alias': alias,
            'color': color,
            'pubkey': pubkey,
            'network': network,
            'block_height': blockHeight,
            'block_hash': blockHash,
            'methods': methods,
            'notifications': notifications,
          },
        GetBalanceResponseModel(balanceMsat: final balanceMsat) => {
            'balance': balanceMsat,
          },
        PayInvoiceResponseModel(
          preimage: final preimage,
          feesPaidMsat: final feesPaidMsat
        ) =>
          {
            'preimage': preimage,
            'fees_paid': feesPaidMsat,
          },
        ErrorResponseModel() => null,
      };

  Map<String, dynamic>? get error => switch (this) {
        ErrorResponseModel(
          errorCode: final errorCode,
          errorMessage: final errorMessage
        ) =>
          {
            'code': errorCode,
            'message': errorMessage,
          },
        _ => null,
      };

  String get plaintTextContent => jsonEncode({
        'result_type': resultType,
        if (error != null) 'error': error,
        if (result != null) 'result': result,
      });
}
