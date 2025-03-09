import 'dart:convert';
import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/src/enums/event_kind.dart';

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
      kind: EventKind.request.value,
      tags: [
        ['p', walletServicePubkey],
        if (expiration != null) ['expiration', '$expiration'],
      ],
      content: encryptedContent,
    );

    return event.sign(clientKeyPair);
  }

  // TODO: fromEntity
  // TODO: toEntity
}

class RequestDecryptionException implements Exception {
  final String message;

  RequestDecryptionException(this.message);
}

class RequestEncryptionException implements Exception {
  final String message;

  RequestEncryptionException(this.message);
}
