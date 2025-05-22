import 'dart:convert';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/database/database.dart';

class RequestMapper {
  static Request modelToEntity(RequestEventModel model) {
    final nwcMethod = Method.fromPlaintext(model.method);
    final id = model.id!;
    final clientPubkey = model.clientPubkey;
    final walletServicePubkey = model.walletServicePubkey;
    final createdAt = model.createdAt;
    final expiration = model.expiresAt;
    final params = model.params;
    switch (nwcMethod) {
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
          method: model.method,
          params: params,
          createdAt: createdAt,
          expiresAt: expiration,
        );
    }
  }

  static RequestEventModel modelFromEventMessage(
    nip01.EventMessage event, {
    required String walletServicePrivateKey,
  }) {
    final clientPubkey = event.event.pubkey;

    String decryptedContent;
    try {
      decryptedContent = Nip04.decrypt(
        event.event.content,
        walletServicePrivateKey,
        clientPubkey,
      );
    } catch (e) {
      log('Failed to decrypt content: $e');
      throw RequestDecryptionException(
        'Failed to decrypt content of event: ${event.event.id}',
      );
    }

    final content = jsonDecode(decryptedContent);
    final method = content['method'] as String;
    final params = content['params'] as Map<String, dynamic>? ?? {};
    final pTag = event.event.tags.firstWhere((tag) => tag[0] == 'p');
    final walletServicePubkey = pTag[1];
    int? expiration;
    try {
      final expirationTag =
          event.event.tags.firstWhere((tag) => tag[0] == 'expiration');
      expiration = expirationTag[1] as int;
    } catch (e) {
      log('[RequestMapper] No expiration tag for event: ${event.event.id}');
    }

    return RequestEventModel(
      id: event.event.id,
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      method: method,
      params: params,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        event.event.createdAt * 1000,
      ),
      expiresAt: expiration != null
          ? DateTime.fromMillisecondsSinceEpoch(expiration * 1000)
          : null,
      relay: event.relayUrl,
    );
  }

  static RequestTable modelToTable(RequestEventModel model) => RequestTable(
        id: model.id!,
        clientPubkey: model.clientPubkey,
        walletServicePubkey: model.walletServicePubkey,
        method: model.method,
        params: jsonEncode(model.params),
        createdAt: model.createdAt,
        expiresAt: model.expiresAt,
      );

  static RequestEventModel tableToModel(RequestTable table) =>
      RequestEventModel(
        id: table.id,
        clientPubkey: table.clientPubkey,
        walletServicePubkey: table.walletServicePubkey,
        method: table.method,
        params: jsonDecode(table.params),
        createdAt: table.createdAt,
        expiresAt: table.expiresAt,
      );

  static nip01.Event modelToEvent(RequestEventModel model,
      {required nip01.KeyPair clientKeyPair}) {
    final content = jsonEncode({
      'method': model.method,
      'params': model.params,
    });

    String encryptedContent;
    try {
      encryptedContent = Nip04.encrypt(
        content,
        clientKeyPair.privateKey,
        model.walletServicePubkey,
      );
    } catch (e) {
      log('Failed to encrypt content: $e');
      throw RequestEncryptionException(e.toString());
    }

    final event = nip01.Event.create(
      keyPair: clientKeyPair,
      createdAt: model.createdAt.microsecondsSinceEpoch ~/ 1000,
      kind: EventKind.request.kind,
      tags: [
        ['p', model.walletServicePubkey],
        if (model.expiresAt != null)
          ['expiration', '${model.expiresAt!.microsecondsSinceEpoch ~/ 1000}'],
      ],
      content: encryptedContent,
    );

    return event;
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
