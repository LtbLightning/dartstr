import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/response_model.freezed.dart';

@freezed
sealed class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String resultType,
    Map<String, dynamic>? result,
    Map<String, dynamic>? error,
  }) = NewResponseModel;
  const factory ResponseModel.event({
    required String requestId,
    required String clientPubkey,
    required String walletServicePubkey,
    required String resultType,
    Map<String, dynamic>? result,
    Map<String, dynamic>? error,
    required String eventId,
    required List<String> relays,
    required DateTime createdAt,
  }) = ResponseEventModel;
  const ResponseModel._();

  /*
  String get resultType => switch (this) {
        GetInfoResponseModel() => 'get_info',
        GetBalanceResponseModel() => 'get_balance',
        PayInvoiceResponseModel() => 'pay_invoice',
        MakeInvoiceResponseModel() => 'make_invoice',
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
        MakeInvoiceResponseModel(
          invoice: final invoice,
          description: final description,
          descriptionHash: final descriptionHash,
          paymentHash: final paymentHash,
          amountMsat: final amountMsat,
          createdAt: final createdAt,
          expiresAt: final expiresAt,
          metadata: final metadata
        ) =>
          {
            'invoice': invoice,
            if (description != null) 'description': description,
            if (descriptionHash != null) 'description_hash': descriptionHash,
            'payment_hash': paymentHash,
            'amount': amountMsat,
            'created_at': createdAt,
            if (expiresAt != null) 'expires_at': expiresAt,
            if (metadata != null) 'metadata': metadata,
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
  */

  String get plaintTextContent => jsonEncode({
        'result_type': resultType,
        if (error != null) 'error': error,
        if (result != null) 'result': result,
      });
}
