import 'dart:convert';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/response.dart';
import 'package:nip47/src/domain/entities/transaction.dart';
import 'package:nip47/src/nip47_base.dart';

class ResponseModel {
  final String requestId;
  final String clientPubkey;
  final String resultType;
  final Map<String, dynamic>? result;
  final String? errorCode;
  final String? errorMessage;
  // The id of the invoice or keysend from a multi-pay request
  final String? multiId;
  final int createdAt;

  const ResponseModel({
    required this.requestId,
    required this.clientPubkey,
    required this.resultType,
    this.result,
    this.errorCode,
    this.errorMessage,
    this.multiId,
    required this.createdAt,
  });

  factory ResponseModel.fromEvent(nip01.Event event,
      {required nip01.KeyPair clientKeyPair}) {
    final walletServicePubkey = event.pubkey;
    final clientPubkey = event.tags.firstWhere((tag) => tag[0] == 'p')[1];

    String content;
    try {
      content = Nip04.decrypt(
        event.content,
        clientKeyPair.privateKey,
        walletServicePubkey,
      );
    } catch (e) {
      throw ResponseDecryptionException(
        'Failed to decrypt response content: $e',
      );
    }
    final contentMap = jsonDecode(content) as Map<String, dynamic>;

    return ResponseModel(
      requestId: event.tags.firstWhere((tag) => tag[0] == 'e')[1],
      clientPubkey: clientPubkey,
      resultType: contentMap['result_type'],
      result: contentMap['result'],
      errorCode: contentMap['error']?['code'],
      errorMessage: contentMap['error']?['message'],
      createdAt: event.createdAt,
    );
  }

  factory ResponseModel.fromEntity(Response response) {
    switch (response) {
      case GetInfoResponse response:
        final supportedCommands =
            response.info?.methods.map((method) => method.plaintext).toList();
        if (response.info?.customMethods != null) {
          supportedCommands?.addAll(response.info!.customMethods!);
        }
        List<String>? notifications;
        if (response.info?.notifications != null) {
          supportedCommands?.add('notifications');
          notifications = response.info!.notifications!
              .map((notification) => notification.plaintext)
              .toList();
          if (response.info?.customNotifications != null) {
            notifications.addAll(response.info!.customNotifications!);
          }
        }
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.getInfo.plaintext,
          result: response.info != null
              ? {
                  'alias': response.info!.alias,
                  'color': response.info!.color,
                  'pubkey': response.info!.pubkey,
                  'network': response.info!.network?.name,
                  'block_height': response.info!.blockHeight,
                  'block_hash': response.info!.blockHash,
                  'methods': supportedCommands,
                  'notifications': notifications
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case GetBalanceResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.getBalance.plaintext,
          result: response.balanceSat != null
              ? {'balance': response.balanceSat! * 1000}
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );

      case MakeInvoiceResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.makeInvoice.plaintext,
          result: response.invoice != null
              ? {
                  'type': TransactionType.incoming.value,
                  if (response.invoice!.invoice != null)
                    'invoice': response.invoice!.invoice,
                  if (response.invoice!.description != null)
                    'description': response.invoice!.description,
                  if (response.invoice!.descriptionHash != null)
                    'description_hash': response.invoice!.descriptionHash,
                  if (response.invoice!.preimage != null)
                    'preimage': response.invoice!.preimage,
                  'payment_hash': response.invoice!.paymentHash,
                  'amount': response.invoice!.amountSat * 1000,
                  'fees_paid': response.invoice!.feesPaidSat * 1000,
                  'created_at': response.invoice!.createdAt,
                  'expires_at': response.invoice!.expiresAt,
                  'metadata': response.invoice!.metadata,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case PayInvoiceResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.payInvoice.plaintext,
          result: response.payResult != null
              ? {
                  'preimage': response.payResult!.preimage,
                  'fees_paid': response.payResult!.feesPaidSat! * 1000,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case MultiPayInvoiceResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.multiPayInvoice.plaintext,
          result: response.payResult != null
              ? {
                  'preimage': response.payResult!.preimage,
                  'fees_paid': response.payResult!.feesPaidSat! * 1000,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          multiId: response.invoiceId,
          createdAt: response.createdAt,
        );
      case PayKeysendResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.payKeysend.plaintext,
          result: response.payResult != null
              ? {
                  'preimage': response.payResult!.preimage,
                  'fees_paid': response.payResult!.feesPaidSat! * 1000,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case MultiPayKeysendResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.multiPayKeysend.plaintext,
          result: response.payResult != null
              ? {
                  'preimage': response.payResult!.preimage,
                  'fees_paid': response.payResult!.feesPaidSat! * 1000,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          multiId: response.keysendId,
          createdAt: response.createdAt,
        );
      case LookupInvoiceResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.lookupInvoice.plaintext,
          result: response.transaction != null
              ? {
                  'type': response.transaction!.type.value,
                  'invoice': response.transaction!.invoice,
                  'description': response.transaction!.description,
                  'description_hash': response.transaction!.descriptionHash,
                  'preimage': response.transaction!.preimage,
                  'payment_hash': response.transaction!.paymentHash,
                  'amount': response.transaction!.amountSat * 1000,
                  'fees_paid': response.transaction!.feesPaidSat * 1000,
                  'created_at': response.transaction!.createdAt,
                  'expires_at': response.transaction!.expiresAt,
                  'settled_at': response.transaction!.settledAt,
                  'metadata': response.transaction!.metadata,
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case ListTransactionsResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: Method.listTransactions.plaintext,
          result: response.transactions != null
              ? {
                  'transactions': response.transactions!
                      .map((transaction) => {
                            'type': transaction.type.value,
                            'invoice': transaction.invoice,
                            'description': transaction.description,
                            'description_hash': transaction.descriptionHash,
                            'preimage': transaction.preimage,
                            'payment_hash': transaction.paymentHash,
                            'amount': transaction.amountSat * 1000,
                            'fees_paid': transaction.feesPaidSat * 1000,
                            'created_at': transaction.createdAt,
                            'expires_at': transaction.expiresAt,
                            'settled_at': transaction.settledAt,
                            'metadata': transaction.metadata,
                          })
                      .toList(),
                }
              : null,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
      case CustomResponse response:
        return ResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          resultType: response.resultType,
          result: response.result,
          errorCode: response.error?.value,
          errorMessage: response.error?.message,
          createdAt: response.createdAt,
        );
    }
  }

  nip01.SignedEvent toEvent({required nip01.KeyPair walletServiceKeyPair}) {
    final content = jsonEncode(
      {
        'result_type': resultType,
        if (errorCode != null)
          'error': {
            'code': errorCode,
            'message': errorMessage,
          },
        if (result != null) 'result': result,
      },
    );

    String encryptedContent;
    try {
      encryptedContent = Nip04.encrypt(
        content,
        walletServiceKeyPair.privateKey,
        clientPubkey,
      );
    } catch (e) {
      throw ResponseEncryptionException(
        'Failed to encrypt response content: $e',
      );
    }

    final event = nip01.UnsignedEvent(
      pubkey: walletServiceKeyPair.publicKey,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.response.kind,
      tags: [
        ['e', requestId],
        ['p', clientPubkey],
        if (multiId != null) ['d', multiId!],
      ],
      content: encryptedContent,
    );

    final signedEvent = event.sign(walletServiceKeyPair);

    return signedEvent;
  }

  /* TODO: Implement for client side
  Response toEntity() {
    final type = Method.fromPlaintext(resultType);
  }
  */
}

class ResponseDecryptionException implements Exception {
  final String message;

  ResponseDecryptionException(this.message);
}

class ResponseEncryptionException implements Exception {
  final String message;

  ResponseEncryptionException(this.message);
}
