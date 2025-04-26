import 'dart:convert';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/multi_pay_invoice_request_invoice.dart';
import 'package:nip47/src/domain/entities/multi_pay_keysend_request_keysend.dart';
import 'package:nip47/src/domain/entities/request.dart';
import 'package:nip47/src/domain/entities/tlv_record.dart';
import 'package:nip47/src/domain/entities/transaction.dart';
import 'package:nip47/src/nip47_base.dart';

class RequestModel {
  final String id;
  final String clientPubkey;
  final String walletServicePubkey;
  final String method;
  final Map<String, dynamic> params;
  final int createdAt;
  final int? expiration;

  const RequestModel({
    required this.id,
    required this.clientPubkey,
    required this.walletServicePubkey,
    required this.method,
    required this.params,
    required this.createdAt,
    this.expiration,
  });

  factory RequestModel.fromEvent(
    nip01.SignedEvent event, {
    required String walletServicePrivateKey,
  }) {
    final clientPubkey = event.pubkey;

    String decryptedContent;
    try {
      decryptedContent = Nip04.decrypt(
        event.content,
        walletServicePrivateKey,
        clientPubkey,
      );
    } catch (e) {
      log('Failed to decrypt content: $e');
      throw RequestDecryptionException(
        'Failed to decrypt content of event: ${event.id}',
      );
    }

    final content = jsonDecode(decryptedContent);
    final method = content['method'] as String;
    final params = content['params'] as Map<String, dynamic>? ?? {};
    final pTag = event.tags.firstWhere((tag) => tag[0] == 'p');
    final walletServicePubkey = pTag[1];
    int? expiration;
    try {
      final expirationTag =
          event.tags.firstWhere((tag) => tag[0] == 'expiration');
      expiration = expirationTag[1] as int;
    } catch (e) {
      log('No expiration tag for event: ${event.id}');
    }

    return RequestModel(
      id: event.id,
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      method: method,
      params: params,
      createdAt: event.createdAt,
      expiration: expiration,
    );
  }

  nip01.SignedEvent toEvent({required nip01.KeyPair clientKeyPair}) {
    final content = jsonEncode({
      'method': method,
      'params': params,
    });

    String encryptedContent;
    try {
      encryptedContent = Nip04.encrypt(
        content,
        clientKeyPair.privateKey,
        walletServicePubkey,
      );
    } catch (e) {
      log('Failed to encrypt content: $e');
      throw RequestEncryptionException(e.toString());
    }

    final event = nip01.UnsignedEvent(
      pubkey: clientKeyPair.publicKey,
      createdAt: createdAt,
      kind: EventKind.request.kind,
      tags: [
        ['p', walletServicePubkey],
        if (expiration != null) ['expiration', '$expiration'],
      ],
      content: encryptedContent,
    );

    return event.sign(clientKeyPair);
  }

  factory RequestModel.fromEntity(Request entity) {
    switch (entity) {
      case GetInfoRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.getInfo.plaintext,
          params: {},
          createdAt: request.createdAt,
          expiration: request.expiresAt,
        );
      case GetBalanceRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.getBalance.plaintext,
          params: {},
          createdAt: request.createdAt,
          expiration: request.expiresAt,
        );
      case MakeInvoiceRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.makeInvoice.plaintext,
          params: {
            'amount': request.amountSat * 1000,
            if (request.description != null) 'description': request.description,
            if (request.descriptionHash != null)
              'description_hash': request.descriptionHash,
            if (request.expiry != null) 'expiry': request.expiry,
          },
          createdAt: request.createdAt,
          expiration: request.expiresAt,
        );
      case PayInvoiceRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.payInvoice.plaintext,
          params: {
            'invoice': request.invoice,
            'amount':
                request.amountSat == null ? null : request.amountSat! * 1000,
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
      case MultiPayInvoiceRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.multiPayInvoice.plaintext,
          params: {
            'invoices': request.invoices
                .map((invoice) => {
                      if (invoice.id != null) 'id': invoice.id,
                      'invoice': invoice.invoice,
                      if (invoice.amountSat != null)
                        'amount': invoice.amountSat! * 1000,
                    })
                .toList(),
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );

      case PayKeysendRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.payKeysend.plaintext,
          params: {
            'amount': request.amountSat * 1000,
            'pubkey': request.pubkey,
            if (request.preimage != null) 'preimage': request.preimage,
            if (request.tlvRecords != null)
              'tlv_records': request.tlvRecords!.map((record) {
                return {
                  'type': record.type,
                  'value': record.value,
                };
              }).toList(),
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
      case MultiPayKeysendRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.multiPayKeysend.plaintext,
          params: {
            'keysends': request.keysends
                .map((keysend) => {
                      if (keysend.id != null) 'id': keysend.id,
                      'pubkey': keysend.pubkey,
                      'amount': keysend.amountSat * 1000,
                      if (keysend.preimage != null)
                        'preimage': keysend.preimage,
                      if (keysend.tlvRecords != null)
                        'tlv_records': keysend.tlvRecords!.map((record) {
                          return {
                            'type': record.type,
                            'value': record.value,
                          };
                        }).toList(),
                    })
                .toList(),
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
      case LookupInvoiceRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.lookupInvoice.plaintext,
          params: {
            if (request.paymentHash != null)
              'payment_hash': request.paymentHash,
            if (request.invoice != null) 'invoice': request.invoice,
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
      case ListTransactionsRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: Method.listTransactions.plaintext,
          params: {
            if (request.from != null) 'from': request.from,
            if (request.until != null) 'until': request.until,
            if (request.limit != null) 'limit': request.limit,
            if (request.offset != null) 'offset': request.offset,
            'unpaid': request.unpaid ?? false,
            if (request.type != null) 'type': request.type,
          },
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
      case CustomRequest request:
        return RequestModel(
          id: request.id,
          clientPubkey: request.clientPubkey,
          walletServicePubkey: request.walletServicePubkey,
          method: request.method,
          params: request.params,
          createdAt: entity.createdAt,
          expiration: entity.expiresAt,
        );
    }
  }

  Request toEntity() {
    final method = Method.fromPlaintext(this.method);
    switch (method) {
      case Method.getInfo:
        return GetInfoRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.getBalance:
        return GetBalanceRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.makeInvoice:
        return MakeInvoiceRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          amountSat: (params['amount'] as int) ~/ 1000,
          description: params['description'] as String?,
          descriptionHash: params['description_hash'] as String?,
          expiry: params['expiry'] as int?,
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.payInvoice:
        return PayInvoiceRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          invoice: params['invoice'] as String,
          amountSat: params['amount'] == null
              ? null
              : (params['amount'] as int) ~/ 1000,
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.multiPayInvoice:
        return MultiPayInvoiceRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          invoices: (params['invoices'] as List)
              .map((invoice) => MultiPayInvoiceRequestInvoice(
                    id: invoice['id'] as String?,
                    invoice: invoice['invoice'] as String,
                    amountSat: invoice['amount'] == null
                        ? null
                        : (invoice['amount'] as int) ~/ 1000,
                  ))
              .toList(),
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.payKeysend:
        return PayKeysendRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          amountSat: (params['amount'] as int) ~/ 1000,
          pubkey: params['pubkey'] as String,
          preimage: params['preimage'] as String?,
          tlvRecords: (params['tlv_records'] as List?)
              ?.map((record) => TlvRecord(
                    type: record['type'] as int,
                    value: record['value'] as String,
                  ))
              .toList(),
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.multiPayKeysend:
        return MultiPayKeysendRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          keysends: (params['keysends'] as List)
              .map((keysend) => MultiPayKeysendRequestKeysend(
                    id: keysend['id'] as String?,
                    pubkey: keysend['pubkey'] as String,
                    amountSat: (keysend['amount'] as int) ~/ 1000,
                    preimage: keysend['preimage'] as String?,
                    tlvRecords: (keysend['tlv_records'] as List?)
                        ?.map((record) => TlvRecord(
                              type: record['type'] as int,
                              value: record['value'] as String,
                            ))
                        .toList(),
                  ))
              .toList(),
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.lookupInvoice:
        return LookupInvoiceRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          paymentHash: params['payment_hash'] as String?,
          invoice: params['invoice'] as String?,
          createdAt: createdAt,
          expiresAt: expiration,
        );
      case Method.listTransactions:
        return ListTransactionsRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          from: params['from'] as int?,
          until: params['until'] as int?,
          limit: params['limit'] as int?,
          offset: params['offset'] as int?,
          unpaid: params['unpaid'] as bool?,
          type: params['type'] == null
              ? null
              : TransactionType.fromValue(params['type'] as String),
          createdAt: createdAt,
          expiresAt: expiration,
        );
      default:
        return CustomRequest(
          id: id,
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          method: method.plaintext,
          params: params,
          createdAt: createdAt,
          expiresAt: expiration,
        );
    }
  }
}

class RequestDecryptionException implements Exception {
  final String message;

  RequestDecryptionException(this.message);
}

class RequestEncryptionException implements Exception {
  final String message;

  RequestEncryptionException(this.message);
}
