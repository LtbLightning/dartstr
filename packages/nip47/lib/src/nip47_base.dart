import 'dart:async';
import 'dart:developer';

import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/domain/entities/connection.dart';
import 'package:nip47/src/domain/entities/filters.dart';
import 'package:nip47/src/data/models/info_event_model.dart';
import 'package:nip47/src/data/models/notification_model.dart';
import 'package:nip47/src/data/models/request_model.dart';
import 'package:nip47/src/data/models/request_subscription.dart';
import 'package:nip47/src/data/models/response_model.dart';
import 'package:nip47/src/domain/entities/transaction.dart';
import 'package:nip47/src/enums/bitcoin_network.dart';
import 'package:nip47/src/enums/error_code.dart';
import 'package:nip47/src/enums/event_kind.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/enums/notification_type.dart';

abstract class WalletService {
  List<Connection> get connections;
  Stream<Request> get requests;
  Future<void> sendInfoEvent({
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<Connection> addConnection({
    required nip01.KeyPair walletServiceKeyPair,
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
  });
  Future<void> restoreConnections(
    List<Connection> connections, {
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> removeConnection(String pubkey);
  Future<List<Request>> getRequests({
    required String relayUrl,
    int? since,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> getInfoRequestHandled(
    GetInfoRequest request, {
    String? alias,
    String? color,
    String? pubkey,
    BitcoinNetwork? network,
    int? blockHeight,
    String? blockHash,
    required List<Method> methods,
    List<NotificationType>? notifications,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> getBalanceRequestHandled(
    GetBalanceRequest request, {
    required int balanceSat,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> makeInvoiceRequestHandled(
    MakeInvoiceRequest request, {
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    required int expiresAt,
    required Map<dynamic, dynamic> metadata,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> payInvoiceRequestHandled(
    PayInvoiceRequest request, {
    required String preimage,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> multiPayInvoiceRequestHandled(
    MultiPayInvoiceRequest request, {
    required Map<String, String> preimageById,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> payKeysendRequestHandled(
    PayKeysendRequest request, {
    required String preimage,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> multiPayKeysendRequestHandled(
    MultiPayKeysendRequest request, {
    required Map<String, String> preimageById,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> lookupInvoiceRequestHandled(
    LookupInvoiceRequest request, {
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    int? settledAt,
    required Map<dynamic, dynamic> metadata,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> listTransactionsRequestHandled(
    ListTransactionsRequest request, {
    required List<Transaction> transactions,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> customRequestHandled(
    CustomResponse response, {
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> failedToHandleRequest(
    Request request, {
    required ErrorCode error,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> notifyPaymentReceived({
    required String connectionPubkey,
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> notifyPaymentSent({
    required String connectionPubkey,
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
    required nip01.KeyPair walletServiceKeyPair,
  });
  Future<void> dispose();
}

class WalletServiceImpl implements WalletService {
  final nip01.Nip01Repository _nip01Repository;
  final Map<String, RequestSubscription> _requestSubscriptionForRelay = {};
  final Map<String, Connection> _connections = {};
  final StreamController<Request> _requestController =
      StreamController.broadcast();

  WalletServiceImpl({
    required nip01.Nip01Repository nip01Repository,
  }) : _nip01Repository = nip01Repository;

  @override
  List<Connection> get connections => _connections.values.toList();

  @override
  Stream<Request> get requests => _requestController.stream.asBroadcastStream();

  @override
  Future<void> sendInfoEvent({
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    // Push wallet capabilities to relay with the nip47 Info Event
    await _ensureRequestSubscription(
      walletServiceKeyPair: walletServiceKeyPair,
      relayUrl: relayUrl.toString(),
    );

    final info = InfoEvent(
      relayUrl: relayUrl.toString(),
      walletServicePubkey: walletServiceKeyPair.publicKey,
      methods: methods,
      notifications: notifications,
    );

    final signedEvent = info.toSignedEvent(
      walletServiceKeyPair: walletServiceKeyPair,
    );

    final isPublished = await _nip01Repository.publishEvent(
      signedEvent,
      relayUrls: [relayUrl.toString()],
    );

    if (!isPublished) {
      throw Exception('Failed to publish Info Event');
    }
  }

  @override
  Future<Connection> addConnection({
    required nip01.KeyPair walletServiceKeyPair,
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
  }) async {
    // Generate a new random connection key pair
    final connectionKeyPair = nip01.KeyPair.generate();

    // Build the connection with URI so the user can share it with apps to connect
    //  its wallet.
    final connection = Connection(
      pubkey: connectionKeyPair.publicKey,
      walletServicePubkey: walletServiceKeyPair.publicKey,
      relayUrl: relayUrl.toString(),
      secret: connectionKeyPair.privateKey,
      methods: methods,
      notifications: notifications,
      lud16: lud16,
    );
    // Save the connection in memory (user of the package should persist it securely)
    _connections[connectionKeyPair.publicKey] = connection;

    return connection;
  }

  @override
  Future<void> restoreConnections(
    List<Connection> connections, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    for (final connection in connections) {
      await _ensureRequestSubscription(
        relayUrl: connection.relayUrl,
        walletServiceKeyPair: walletServiceKeyPair,
      );
      _connections[connection.pubkey] = connection;
    }
  }

  @override
  Future<void> removeConnection(String pubkey) async {
    final connectionRelay = _connections[pubkey]?.relayUrl;

    _connections.remove(pubkey);

    // If no more connections for the relay, cancel the request subscription
    if (connectionRelay != null &&
        _requestSubscriptionForRelay[connectionRelay] != null &&
        !_connections.values.any(
          (connection) => connection.relayUrl == connectionRelay,
        )) {
      // Unsubscribe for requests from the relay
      await _nip01Repository.unsubscribeFromEvents(
        _requestSubscriptionForRelay[connectionRelay]!.subscriptionId,
        relayUrls: [connectionRelay],
      );
      // Cancel the stream subscription
      _requestSubscriptionForRelay[connectionRelay]?.cancelStream();
      // Remove the subscription from the map
      _requestSubscriptionForRelay.remove(connectionRelay);
    }
  }

  @override
  Future<List<Request>> getRequests({
    required String relayUrl,
    int? since,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final events = await _nip01Repository.getStoredEvents(
      [
        Filters.requests(
          walletServicePubkey: walletServiceKeyPair.publicKey,
          since: since,
        )
      ],
      relayUrls: [relayUrl],
    );

    final requests = await Future.wait(
      events.map(
        (event) async => await _tryToExtractValidRequest(
          event,
          walletServiceKeyPair: walletServiceKeyPair,
        ),
      ),
    ).then(
      (requests) => requests.nonNulls.toList(),
    );

    return requests;
  }

  @override
  Future<void> getInfoRequestHandled(
    GetInfoRequest request, {
    String? alias,
    String? color,
    String? pubkey,
    BitcoinNetwork? network,
    int? blockHeight,
    String? blockHash,
    required List<Method> methods,
    List<NotificationType>? notifications,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    // Todo: Add parameter validation
    final response = Response.getInfoResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      alias: alias,
      color: color,
      pubkey: pubkey,
      network: network,
      blockHeight: blockHeight,
      blockHash: blockHash,
      methods: methods,
      notifications: notifications,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> getBalanceRequestHandled(
    GetBalanceRequest request, {
    required int balanceSat,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.getBalanceResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      balanceSat: balanceSat,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> makeInvoiceRequestHandled(
    MakeInvoiceRequest request, {
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    required int expiresAt,
    required Map<dynamic, dynamic> metadata,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.makeInvoiceResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      invoice: invoice,
      description: description,
      descriptionHash: descriptionHash,
      preimage: preimage,
      paymentHash: paymentHash,
      amountSat: amountSat,
      feesPaidSat: feesPaidSat,
      createdAt: createdAt,
      expiresAt: expiresAt,
      metadata: metadata,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> payInvoiceRequestHandled(
    PayInvoiceRequest request, {
    required String preimage,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.payInvoiceResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      preimage: preimage,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> multiPayInvoiceRequestHandled(
    MultiPayInvoiceRequest request, {
    required Map<String, String> preimageById,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    for (var entry in preimageById.entries) {
      final response = Response.multiPayInvoiceResponse(
        requestId: request.id,
        connectionPubkey: request.connectionPubkey,
        preimage: entry.value,
        id: entry.key,
      );

      await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
    }
  }

  @override
  Future<void> payKeysendRequestHandled(
    PayKeysendRequest request, {
    required String preimage,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.payKeysendResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      preimage: preimage,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> multiPayKeysendRequestHandled(
    MultiPayKeysendRequest request, {
    required Map<String, String> preimageById,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    for (var entry in preimageById.entries) {
      final response = Response.multiPayKeysendResponse(
        requestId: request.id,
        connectionPubkey: request.connectionPubkey,
        preimage: entry.value,
        id: entry.key,
      );

      await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
    }
  }

  @override
  Future<void> lookupInvoiceRequestHandled(
    LookupInvoiceRequest request, {
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    int? settledAt,
    required Map<dynamic, dynamic> metadata,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.lookupInvoiceResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      invoice: invoice,
      description: description,
      descriptionHash: descriptionHash,
      preimage: preimage,
      paymentHash: paymentHash,
      amountSat: amountSat,
      feesPaidSat: feesPaidSat,
      createdAt: createdAt,
      expiresAt: expiresAt,
      settledAt: settledAt,
      metadata: metadata,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> listTransactionsRequestHandled(
    ListTransactionsRequest request, {
    required List<Transaction> transactions,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.listTransactionsResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      transactions: transactions,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> customRequestHandled(
    CustomResponse response, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> failedToHandleRequest(
    Request request, {
    required ErrorCode error,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final response = Response.errorResponse(
      requestId: request.id,
      connectionPubkey: request.connectionPubkey,
      method: request.method,
      error: error,
    );

    await _sendResponse(response, walletServiceKeyPair: walletServiceKeyPair);
  }

  @override
  Future<void> notifyPaymentReceived({
    required String connectionPubkey,
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final notification = PaymentReceivedNotification(
      connectionPubkey: connectionPubkey,
      invoice: invoice,
      description: description,
      descriptionHash: descriptionHash,
      preimage: preimage,
      paymentHash: paymentHash,
      amountSat: amountSat,
      feesPaidSat: feesPaidSat,
      createdAt: createdAt,
      expiresAt: expiresAt,
      settledAt: settledAt,
      metadata: metadata,
    );

    await _sendNotification(
      notification,
      walletServiceKeyPair: walletServiceKeyPair,
    );
  }

  @override
  Future<void> notifyPaymentSent({
    required String connectionPubkey,
    required String invoice,
    String? description,
    String? descriptionHash,
    required String preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    required int settledAt,
    Map<String, dynamic>? metadata,
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final notification = PaymentSentNotification(
      connectionPubkey: connectionPubkey,
      invoice: invoice,
      description: description,
      descriptionHash: descriptionHash,
      preimage: preimage,
      paymentHash: paymentHash,
      amountSat: amountSat,
      feesPaidSat: feesPaidSat,
      createdAt: createdAt,
      expiresAt: expiresAt,
      settledAt: settledAt,
      metadata: metadata,
    );

    await _sendNotification(
      notification,
      walletServiceKeyPair: walletServiceKeyPair,
    );
  }

  @override
  Future<void> dispose() async {
    await _requestController.close();
    for (final connection in _connections.values) {
      await removeConnection(connection.pubkey);
    }
  }

  Future<void> _ensureRequestSubscription({
    required nip01.KeyPair walletServiceKeyPair,
    required String relayUrl,
  }) async {
    if (_requestSubscriptionForRelay.containsKey(relayUrl)) return;

    final requestSubscription = await _subscribeToRequests(
      walletServiceKeyPair: walletServiceKeyPair,
      relayUrl: relayUrl,
    );

    _requestSubscriptionForRelay[relayUrl] = requestSubscription;
  }

  Future<RequestSubscription> _subscribeToRequests({
    required nip01.KeyPair walletServiceKeyPair,
    required String relayUrl,
  }) async {
    // Generate a new random subscription ID
    final subscriptionId = SecretGenerator.secretHex(64);

    // Listen to requests from the dedicated nwc relay
    final events = await _nip01Repository.subscribeToEvents(
      subscriptionId,
      [
        Filters.requests(
          walletServicePubkey: walletServiceKeyPair.publicKey,
        )
      ],
      relayUrls: [relayUrl],
    );

    final streamSubscription = events.listen(
      (event) => _handleEvent(
        event,
        walletServiceKeyPair: walletServiceKeyPair,
      ),
    );

    return RequestSubscription(
      relayUrl: relayUrl,
      subscriptionId: subscriptionId,
      streamSubscription: streamSubscription,
    );
  }

  Future<Request?> _tryToExtractValidRequest(
    nip01.Event event, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    if (event.kind != EventKind.request.value) {
      // The wallet should only process NIP-47 request event kinds
      return null;
    }

    if (_isExpired(event)) return null;

    Request request = Request.fromEvent(
      event,
      walletServiceKeyPair.privateKey,
    );

    final errorResponse = _validateRequest(request);
    if (errorResponse != null) {
      await _sendResponse(
        errorResponse,
        walletServiceKeyPair: walletServiceKeyPair,
      );
      return null;
    }

    return request;
  }

  void _handleEvent(
    nip01.Event event, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    try {
      final request = await _tryToExtractValidRequest(
        event,
        walletServiceKeyPair: walletServiceKeyPair,
      );

      if (request == null) return;

      _requestController.add(request);
    } catch (e) {
      log('Error handling event: $e');
      return;
    }
  }

  bool _isExpired(nip01.Event event) {
    for (var tag in event.tags) {
      if (tag[0] == 'expiration') {
        final expirationTimestamp = int.tryParse(tag[1]);
        if (expirationTimestamp != null &&
            DateTime.now().millisecondsSinceEpoch ~/ 1000 >
                expirationTimestamp) {
          return true;
        }
      }
    }
    return false;
  }

  ErrorResponse? _validateRequest(Request request) {
    // 1. First make sure the request is a known request
    if (request is UnknownRequest) {
      // NotImplemented error response
      return Response.errorResponse(
        requestId: request.id,
        connectionPubkey: request.connectionPubkey,
        method: Method.unknown,
        error: ErrorCode.notImplemented,
        unknownMethod: request.unknownMethod,
      ) as ErrorResponse;
    }

    // 2. Check if the known request is coming from a trusted connection
    final connection = _connections[request.connectionPubkey];
    if (connection == null) {
      // Unauthorized error response
      return Response.errorResponse(
        requestId: request.id,
        connectionPubkey: request.connectionPubkey,
        method: request.method,
        error: ErrorCode.unauthorized,
      ) as ErrorResponse;
    }

    // 3. Check if the requested method is permitted for the known connection
    if (!connection.methods.contains(request.method)) {
      // Restricted error response
      return Response.errorResponse(
        requestId: request.id,
        connectionPubkey: request.connectionPubkey,
        method: request.method,
        error: ErrorCode.restricted,
      ) as ErrorResponse;
    }

    return null; // Request is valid
  }

  Future<void> _sendResponse(
    Response response, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final signedResponseEvent = response.toSignedEvent(
      walletServiceKeyPair: walletServiceKeyPair,
    );

    final relayUrl = _connections[response.connectionPubkey]?.relayUrl;
    if (relayUrl == null) {
      log('No relay found for request: ${response.requestId}');
      throw Exception('No relay found for request');
    }

    final isPublished = await _nip01Repository
        .publishEvent(signedResponseEvent, relayUrls: [relayUrl]);

    if (!isPublished) {
      // Todo: use better logging and/or add a retry mechanism
      log(
        'Failed to publish response: $signedResponseEvent for request: ${response.requestId}',
      );
      throw Exception('Failed to publish response');
    }
  }

  Future<void> _sendNotification(
    Notification notification, {
    required nip01.KeyPair walletServiceKeyPair,
  }) async {
    final signedNotificationEvent = notification.toSignedEvent(
      walletServiceKeyPair: walletServiceKeyPair,
    );

    final relayUrl = _connections[notification.connectionPubkey]?.relayUrl;
    if (relayUrl == null) {
      log('No relay found for connection: $notification.connectionPubkey');
      throw Exception('No relay found for connection');
    }

    final isPublished = await _nip01Repository
        .publishEvent(signedNotificationEvent, relayUrls: [relayUrl]);

    if (!isPublished) {
      log(
        'Failed to publish notification: $signedNotificationEvent for connection: $notification.connectionPubkey',
      );
      throw Exception('Failed to publish notification');
    }
  }
}
