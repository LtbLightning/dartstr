import 'dart:convert';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/database/database.dart';

class RequestMapper {
  static RequestEventModel eventToModel(
    nip01.Event event, {
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

    return RequestEventModel(
      id: event.id,
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      method: method,
      params: params,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        event.createdAt * 1000,
      ),
      expiresAt: expiration != null
          ? DateTime.fromMillisecondsSinceEpoch(expiration * 1000)
          : null,
    );
  }

  static RequestTable modelToTable(RequestEventModel model) => RequestTable(
        id: model.id,
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
