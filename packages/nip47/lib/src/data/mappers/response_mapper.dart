import 'dart:convert';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip04/nip04.dart';
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/response_error_model.dart';
import 'package:nip47/src/data/models/response_model.dart';
import 'package:nip47/src/data/models/transaction_model.dart';
import 'package:nip47/src/database/database.dart';

class ResponseMapper {
  static NewResponseModel modelFromEntity(Response response) {
    switch (response) {
      case GetInfoResponse():
        final networkPlaintext = response.network?.plaintext;
        final standardMethods =
            response.methods.map((method) => method.plaintext).toList();
        final customMethods = response.customMethods;
        final methods = [
          ...standardMethods,
          ...customMethods,
        ];
        final standardNotifications = response.notifications
            .map((notification) => notification.plaintext)
            .toList();
        final customNotifications = response.customNotifications;
        final notifications = [
          ...standardNotifications,
          ...customNotifications,
        ];

        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.getInfo.plaintext,
          result: {
            if (response.alias.isNotEmpty) 'alias': response.alias,
            if (response.color.isNotEmpty) 'color': response.color,
            if (response.pubkey.isNotEmpty) 'pubkey': response.pubkey,
            if (networkPlaintext != null) 'network': networkPlaintext,
            if (response.blockHeight != null)
              'block_height': response.blockHeight,
            if (response.blockHash.isNotEmpty) 'block_hash': response.blockHash,
            'methods': methods,
            if (notifications.isNotEmpty) 'notifications': notifications,
          },
        );
      case GetBalanceResponse():
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.getBalance.plaintext,
          result: {'balance': response.balanceSat * 1000},
        );
      case MakeInvoiceResponse():
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.makeInvoice.plaintext,
          result: {
            'invoice': response.invoice,
            if (response.description != null)
              'description': response.description,
            if (response.descriptionHash != null)
              'description_hash': response.descriptionHash,
            'payment_hash': response.paymentHash,
            'amount': response.amountSat * 1000,
            'created_at': response.createdAt,
            if (response.expiresAt != null) 'expires_at': response.expiresAt,
            if (response.metadata != null) 'metadata': response.metadata,
          },
        );
      case PayInvoiceResponse():
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.payInvoice.plaintext,
          result: {
            'preimage': response.preimage,
            if (response.feesPaidSat != null)
              'fees_paid': response.feesPaidSat! * 1000,
          },
        );
      case LookupInvoiceResponse():
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.lookupInvoice.plaintext,
          result: {
            'type': response.type,
            if (response.invoice != null) 'invoice': response.invoice,
            if (response.description != null)
              'description': response.description,
            if (response.descriptionHash != null)
              'description_hash': response.descriptionHash,
            'payment_hash': response.paymentHash,
            'amount': response.amountSat * 1000,
            if (response.feesPaidSat != null)
              'fees_paid': response.feesPaidSat! * 1000,
            'created_at': response.createdAt,
            if (response.expiresAt != null) 'expires_at': response.expiresAt,
            if (response.settledAt != null) 'settled_at': response.settledAt,
            if (response.metadata != null) 'metadata': response.metadata,
          },
        );
      case ListTransactionsResponse():
        final transactions = response.transactions
            .map((t) => TransactionModel.fromEntity(t).toJson())
            .toList();

        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.listTransactions.plaintext,
          result: {'transactions': transactions},
        );
      case CustomResponse():
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: Method.custom.plaintext,
          result: response.params,
        );
      case ErrorResponse():
        final responseErrorModel = ResponseErrorModel(
          code: response.errorCode.plaintext,
          message: response.errorMessage ?? response.errorCode.defaultMessage,
        );
        return NewResponseModel(
          requestId: response.requestId,
          clientPubkey: response.clientPubkey,
          walletServicePubkey: response.walletServicePubkey,
          resultType: response.method,
          error: responseErrorModel,
        );
    }
  }

  static ResponseEvent modelToEntity(ResponseEventModel model) {
    Response response;
    final error = model.error;
    if (error != null) {
      response = Response.error(
        requestId: model.requestId,
        clientPubkey: model.clientPubkey,
        walletServicePubkey: model.walletServicePubkey,
        method: model.resultType,
        errorCode: ErrorCode.fromPlaintext(error.code),
        errorMessage: error.message,
      );
    } else {
      // If there is no error, the result must be present.
      final result = model.result!;
      final method = Method.fromPlaintext(model.resultType);

      switch (method) {
        case Method.getBalance:
          final balanceMsat = result['balance'] as int;
          final balanceSat = balanceMsat ~/ 1000;

          response = GetBalanceResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            balanceSat: balanceSat,
          );
        case Method.getInfo:
          final networkPlaintext = result['network'] as String?;
          final network = networkPlaintext != null
              ? Network.fromPlainText(networkPlaintext)
              : null;
          final methods = result['methods'] as List<String>;
          final standardMethods = methods
              .map((method) => Method.fromPlaintext(method))
              .where((method) => method != Method.custom)
              .toList();
          final customMethods = methods
              .where((method) => Method.fromPlaintext(method) == Method.custom)
              .toList();
          final notifications = result['notifications'] as List<String>?;
          final standardNotifications = notifications
              ?.map(
                (notification) => NotificationType.fromPlaintext(notification),
              )
              .where((notification) => notification != NotificationType.custom)
              .toList();
          final customNotifications = notifications
              ?.where((notification) =>
                  NotificationType.fromPlaintext(notification) ==
                  NotificationType.custom)
              .toList();

          response = GetInfoResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            alias: result['alias'] as String? ?? '',
            color: result['color'] as String? ?? '',
            pubkey: result['pubkey'] as String,
            network: network,
            blockHeight: result['block_height'] as int?,
            blockHash: result['block_hash'] as String? ?? '',
            methods: standardMethods,
            customMethods: customMethods,
            notifications: standardNotifications ?? [],
            customNotifications: customNotifications ?? [],
          );
        case Method.makeInvoice:
          final amount = result['amount'] as int;
          final amountSat = amount ~/ 1000;

          response = MakeInvoiceResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            invoice: result['invoice'] as String,
            description: result['description'] as String?,
            descriptionHash: result['description_hash'] as String?,
            paymentHash: result['payment_hash'] as String,
            amountSat: amountSat,
            createdAt: result['created_at'] as int,
            expiresAt: result['expires_at'] as int?,
            metadata: result['metadata'] as Map<String, dynamic>?,
          );
        case Method.payInvoice:
          final preimage = result['preimage'] as String;
          final feesPaidMsat = result['fees_paid'] as int?;

          response = PayInvoiceResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            preimage: preimage,
            feesPaidSat: feesPaidMsat != null ? feesPaidMsat ~/ 1000 : null,
          );
        case Method.multiPayInvoice:
          // TODO: Handle this case.
          throw UnimplementedError();
        case Method.payKeysend:
          // TODO: Handle this case.
          throw UnimplementedError();
        case Method.multiPayKeysend:
          // TODO: Handle this case.
          throw UnimplementedError();
        case Method.lookupInvoice:
          final amountMsat = result['amount'] as int;
          final amountSat = amountMsat ~/ 1000;
          final feesPaidMsat = result['fees_paid'] as int?;
          final feesPaidSat =
              feesPaidMsat != null ? feesPaidMsat ~/ 1000 : null;
          response = LookupInvoiceResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            type: result['type'] as String,
            invoice: result['invoice'] as String?,
            description: result['description'] as String?,
            descriptionHash: result['description_hash'] as String?,
            paymentHash: result['payment_hash'] as String,
            amountSat: amountSat,
            feesPaidSat: feesPaidSat,
            createdAt: result['created_at'] as int,
            expiresAt: result['expires_at'] as int?,
            settledAt: result['settled_at'] as int?,
            metadata: result['metadata'] as Map<String, dynamic>?,
          );
        case Method.listTransactions:
          final transactions = (result['transactions'] as List<dynamic>)
              .map((transaction) => TransactionModel.fromJson(
                    transaction as Map<String, dynamic>,
                  ))
              .toList();

          response = ListTransactionsResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            transactions: transactions.map((t) => t.toEntity()).toList(),
          );
        case Method.custom:
          response = CustomResponse(
            requestId: model.requestId,
            clientPubkey: model.clientPubkey,
            walletServicePubkey: model.walletServicePubkey,
            method: model.resultType,
            params: model.result as Map<String, dynamic>,
          );
      }
    }

    final event = ResponseEvent(
        response: response,
        eventId: model.eventId,
        createdAt: model.createdAt,
        relays: model.relays);

    return event;
  }

  static ResponseEventModel modelFromEvent(
    nip01.Event event, {
    required String clientPrivateKey,
    required List<String> relays,
  }) {
    final clientPubkey = event.tags.firstWhere((tag) => tag[0] == 'p')[1];

    String plaintextContent;
    try {
      plaintextContent = Nip04.decrypt(
        event.content,
        clientPrivateKey,
        event.pubkey,
      );
    } catch (e) {
      throw ResponseDecryptionException(e.toString());
    }

    final content = jsonDecode(plaintextContent) as Map<String, dynamic>;
    final resultType = content['result_type'] as String;
    final errorCode = content['error']?['code'] as String?;
    final errorMessage = content['error']?['message'] as String?;
    final result = content['result'];
    ResponseErrorModel? error;
    if (errorCode != null) {
      error = ResponseErrorModel(
        code: errorCode,
        message: errorMessage ?? '',
      );
    }

    return ResponseEventModel(
      requestId: event.tags.firstWhere((tag) => tag[0] == 'e')[1],
      clientPubkey: clientPubkey,
      walletServicePubkey: event.pubkey,
      resultType: resultType,
      result: result,
      error: error,
      eventId: event.id,
      relays: relays,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        event.createdAt * 1000,
      ),
    );
  }

  static nip01.Event modelToEvent(
    NewResponseModel model, {
    required nip01.KeyPair walletServiceKeyPair,
  }) {
    String content;
    try {
      content = Nip04.encrypt(
        model.plaintextContent,
        walletServiceKeyPair.privateKey,
        model.clientPubkey,
      );
    } catch (e) {
      throw ResponseEncryptionException(e.toString());
    }

    final tags = [
      ['e', model.requestId],
      ['p', model.clientPubkey],
      //if (model.multiId != null) ['d', model.multiId!],
    ];
    final event = nip01.Event.create(
      keyPair: walletServiceKeyPair,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.response.kind,
      content: content,
      tags: tags,
    );

    return event;
  }

  static ResponseEventModel modelFromTable(
    ResponseTable responseTable, {
    required String clientPubkey,
    required String walletServicePubkey,
  }) {
    final error = responseTable.errorCode != null
        ? ResponseErrorModel(
            code: responseTable.errorCode!,
            message: responseTable.errorMessage ?? '',
          )
        : null;
    return ResponseEventModel(
      requestId: responseTable.requestId,
      clientPubkey: clientPubkey,
      walletServicePubkey: walletServicePubkey,
      resultType: responseTable.resultType,
      result: responseTable.result != null
          ? jsonDecode(responseTable.result!)
          : null,
      error: error,
      eventId: responseTable.id,
      relays: responseTable.relays,
      createdAt: responseTable.createdAt,
    );
  }

  static ResponseTable modelToTable(ResponseEventModel model) {
    return ResponseTable(
      id: model.eventId,
      requestId: model.requestId,
      resultType: model.resultType,
      result: model.result != null ? jsonEncode(model.result) : null,
      errorCode: model.error?.code,
      errorMessage: model.error?.message,
      createdAt: model.createdAt,
      relays: model.relays,
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
