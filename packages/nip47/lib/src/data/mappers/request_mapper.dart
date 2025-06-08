import 'dart:convert';
import 'dart:developer';

import 'package:bolt11_decoder/bolt11_decoder.dart';
import 'package:decimal/decimal.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/request_model.dart';

class RequestMapper {
  static NewRequestModel modelFromEntity(Request request) {
    Map<String, dynamic> params;

    switch (request) {
      case GetInfoRequest():
        params = {};
      case GetBalanceRequest():
        params = {};
      case MakeInvoiceRequest():
        params = {
          'amount': request.amountSat * 1000,
          if (request.description != null) 'description': request.description,
          if (request.descriptionHash != null)
            'description_hash': request.descriptionHash,
          if (request.expiry != null)
            'expiry': request.expiry!.millisecondsSinceEpoch ~/ 1000,
        };
      case PayInvoiceRequest():
        params = {
          'invoice': request.invoice,
        };
      case LookupInvoiceRequest():
        params = {
          if (request.paymentHash != null) 'payment_hash': request.paymentHash,
          if (request.invoice != null) 'invoice': request.invoice,
        };
      case ListTransactionsRequest():
        params = {
          if (request.from != null)
            'from': request.from!.millisecondsSinceEpoch ~/ 1000,
          if (request.until != null)
            'until': request.until!.millisecondsSinceEpoch ~/ 1000,
          if (request.limit != null) 'limit': request.limit!,
          if (request.offset != null) 'offset': request.offset!,
          if (request.unpaid != null) 'unpaid': request.unpaid!,
          if (request.type != null) 'type': request.type!.plaintext,
        };
      case CustomRequest():
        params = request.params;
    }

    return NewRequestModel(
      clientPubkey: request.clientPubkey,
      walletServicePubkey: request.walletServicePubkey,
      method: request.method,
      params: params,
      expiresAt: request.expiresAt,
    );
  }

  static RequestEvent modelToEntity(RequestEventModel model) {
    final nwcMethod = Method.fromPlaintext(model.method);
    final clientPubkey = model.clientPubkey;
    final walletServicePubkey = model.walletServicePubkey;
    final expiresAt = model.expiresAt;
    final params = model.params;

    Request request;
    switch (nwcMethod) {
      case Method.getInfo:
        request = GetInfoRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          expiresAt: expiresAt,
        );
      case Method.getBalance:
        request = GetBalanceRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          expiresAt: expiresAt,
        );
      case Method.makeInvoice:
        final expiry = params['expiry'] as int?;
        request = MakeInvoiceRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          amountSat: (params['amount'] as int) ~/ 1000,
          description: params['description'] as String?,
          descriptionHash: params['description_hash'] as String?,
          expiry: expiry != null
              ? DateTime.fromMillisecondsSinceEpoch(expiry * 1000)
              : null,
          expiresAt: expiresAt,
        );
      case Method.payInvoice:
        final invoice = params['invoice'] as String;
        final decodedInvoice = Bolt11PaymentRequest(invoice);
        final amountSat = decodedInvoice.amount * Decimal.fromInt(100000000);
        request = PayInvoiceRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          invoice: invoice,
          amountSat: amountSat.toBigInt().toInt(),
          expiresAt: expiresAt,
        );
      case Method.lookupInvoice:
        request = LookupInvoiceRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          paymentHash: params['payment_hash'] as String?,
          invoice: params['invoice'] as String?,
          expiresAt: expiresAt,
        );
      case Method.listTransactions:
        final from = params['from'] as int?;
        final until = params['until'] as int?;
        request = ListTransactionsRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          from: from != null
              ? DateTime.fromMillisecondsSinceEpoch(from * 1000)
              : null,
          until: until != null
              ? DateTime.fromMillisecondsSinceEpoch(until * 1000)
              : null,
          limit: params['limit'] as int?,
          offset: params['offset'] as int?,
          unpaid: params['unpaid'] as bool?,
          type: params['type'] == null
              ? null
              : TransactionType.fromPlainText(params['type'] as String),
          expiresAt: expiresAt,
        );
      default:
        request = CustomRequest(
          clientPubkey: clientPubkey,
          walletServicePubkey: walletServicePubkey,
          method: model.method,
          params: params,
          expiresAt: expiresAt,
        );
    }

    final event = RequestEvent(
      request: request,
      eventId: model.eventId,
      createdAt: model.createdAt,
      relays: model.relays,
    );

    return event;
  }

  static RequestEventModel modelFromEvent(
    nip01.Event event, {
    required String walletServicePrivateKey,
    required List<String> relays,
  }) {
    final clientPubkey = event.pubkey;
    final eventId = event.id;

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
        'Failed to decrypt content of event: $eventId',
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
      log('[RequestMapper] No expiration tag for event: $eventId');
    }

    return RequestEventModel(
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      method: method,
      params: params,
      expiresAt: expiration != null
          ? DateTime.fromMillisecondsSinceEpoch(expiration * 1000)
          : null,
      eventId: eventId,
      relays: relays,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        event.createdAt * 1000,
      ),
    );
  }

  static nip01.Event modelToEvent(
    NewRequestModel model, {
    required nip01.KeyPair clientKeyPair,
  }) {
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
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
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

  static RequestTable modelToTable(RequestEventModel model) => RequestTable(
        id: model.eventId,
        clientPubkey: model.clientPubkey,
        walletServicePubkey: model.walletServicePubkey,
        method: model.method,
        params: jsonEncode(model.params),
        createdAt: model.createdAt,
        expiresAt: model.expiresAt,
        relays: model.relays,
      );

  static RequestEventModel modelFromTable(RequestTable table) =>
      RequestEventModel(
        clientPubkey: table.clientPubkey,
        walletServicePubkey: table.walletServicePubkey,
        method: table.method,
        params: jsonDecode(table.params),
        expiresAt: table.expiresAt,
        eventId: table.id,
        relays: table.relays,
        createdAt: table.createdAt,
      );
}

class RequestDecryptionException implements Exception {
  final String message;

  RequestDecryptionException(this.message);
}

class RequestEncryptionException implements Exception {
  final String message;

  RequestEncryptionException(this.message);
}
