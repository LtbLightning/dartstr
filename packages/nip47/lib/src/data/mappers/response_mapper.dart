import 'dart:convert';

import 'package:nip01/nip01.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/database/database.dart';

class ResponseMapper {
  static Response modelToEntity(ResponseEventModel model) {
    switch (model.resultType) {
      case 'get_balance':
        final balanceMsat = model.result?['balance'] as int?;
        final balanceSat = balanceMsat != null ? balanceMsat ~/ 1000 : null;
        final errorCode = model.errorCode;
        final error = errorCode != null ? ErrorCode.fromValue(errorCode) : null;

        return GetBalanceResponse(
          requestId: model.requestId,
          clientPubkey: model.clientPubkey,
          balanceSat: balanceSat,
          error: error,
          createdAt: model.createdAt,
        );
      default:
        throw Exception('Unknown response type');
    }
  }

  static ResponseEventModel modelFromTable(
    ResponseTable responseTable, {
    required String clientPubkey,
  }) {
    return ResponseEventModel(
      id: responseTable.id,
      requestId: responseTable.requestId,
      clientPubkey: clientPubkey,
      resultType: responseTable.resultType,
      result: responseTable.result != null
          ? jsonDecode(responseTable.result!)
          : null,
      errorCode: responseTable.errorCode,
      errorMessage: responseTable.errorMessage,
      multiId: responseTable.multiId,
      createdAt: responseTable.createdAt,
    );
  }

  static ResponseTable modelToTable(ResponseEventModel model) {
    return ResponseTable(
      id: model.id!,
      requestId: model.requestId,
      resultType: model.resultType,
      result: model.result != null ? jsonEncode(model.result) : null,
      errorCode: model.errorCode,
      errorMessage: model.errorMessage,
      multiId: model.multiId,
      createdAt: model.createdAt,
    );
  }

  static Event modelToEvent(
    ResponseEventModel model, {
    required KeyPair walletServiceKeyPair,
  }) {
    final plaintextContent = jsonEncode(
      {
        'result_type': model.resultType,
        if (model.errorCode != null)
          'error': {
            'code': model.errorCode,
            'message': model.errorMessage,
          },
        if (model.result != null) 'result': model.result,
      },
    );

    String content;
    try {
      content = Nip04.encrypt(
        plaintextContent,
        walletServiceKeyPair.privateKey,
        model.clientPubkey,
      );
    } catch (e) {
      throw ResponseEncryptionException(e.toString());
    }

    final tags = [
      ['e', model.requestId],
      ['p', model.clientPubkey],
      if (model.multiId != null) ['d', model.multiId!],
    ];
    final event = Event.create(
      keyPair: walletServiceKeyPair,
      createdAt: model.createdAtEpoch,
      kind: model.kind,
      content: content,
      tags: tags,
    );

    return event;
  }

  static ResponseEventModel modelFromEventMessage(
    nip01.EventMessage event, {
    required String clientPrivateKey,
  }) {
    final clientPubkey = event.event.tags.firstWhere((tag) => tag[0] == 'p')[1];

    String plaintextContent;
    try {
      plaintextContent = Nip04.decrypt(
        event.event.content,
        clientPrivateKey,
        event.event.pubkey,
      );
    } catch (e) {
      throw ResponseDecryptionException(e.toString());
    }

    final content = jsonDecode(plaintextContent);
    final resultType = content['result_type'] as String;
    final errorCode = content['error']?['code'] as String?;
    final errorMessage = content['error']?['message'] as String?;
    final result = content['result'];

    return ResponseEventModel(
      id: event.event.id,
      requestId: event.event.tags.firstWhere((tag) => tag[0] == 'e')[1],
      clientPubkey: clientPubkey,
      resultType: resultType,
      errorCode: errorCode,
      errorMessage: errorMessage,
      result: result,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        event.event.createdAt * 1000,
      ),
      relay: event.relayUrl,
    );
  }
}

class ResponseEncryptionException implements Exception {
  final String message;

  ResponseEncryptionException(this.message);

  @override
  String toString() => '[ResponseMapper]: $message';
}

class ResponseDecryptionException implements Exception {
  final String message;

  ResponseDecryptionException(this.message);

  @override
  String toString() => '[ResponseMapper]: $message';
}
