import 'dart:convert';

import 'package:nip01/nip01.dart';
import 'package:nip04/nip04.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/database/database.dart';

class ResponseMapper {
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
}

class ResponseEncryptionException implements Exception {
  final String message;

  ResponseEncryptionException(this.message);

  @override
  String toString() => '[ResponseMapper]: $message';
}
