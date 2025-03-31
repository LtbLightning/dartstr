import 'dart:async';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/models/info_event_model.dart';
import 'package:nip47/src/data/models/request_model.dart';
import 'package:nip47/src/data/models/response_model.dart';
import 'package:nip47/src/domain/entities/entities.dart';
import 'package:nip47/src/domain/repositories/wallet_service_repository.dart';
import 'package:nip47/src/nip47_base.dart';

class WalletServiceRepositoryImpl implements WalletServiceRepository {
  final nip01.RelayManagerService _relayManagerService;
  late StreamSubscription<nip01.SignedEvent> _eventSubscription;
  final Map<String, nip01.Subscription> _connectionSubscriptions = {};
  final Map<String, WalletConnection> _connections = {};
  final StreamController<Request> _requestsController;

  WalletServiceRepositoryImpl({
    required nip01.RelayManagerService relayManagerService,
  })  : _relayManagerService = relayManagerService,
        _requestsController = StreamController<Request>.broadcast() {
    _eventSubscription = _relayManagerService.eventsStream.where((event) {
      return event.kind == EventKind.request.kind;
    }).listen((request) async {
      await _handleRequest(request);
    });
  }

  @override
  Stream<Request> get requests =>
      _requestsController.stream.asBroadcastStream();

  @override
  Future<List<WalletConnection>> get connections async {
    return _connections.values.toList();
  }

  @override
  Future<WalletConnection> createConnection({
    required String walletServicePrivateKey,
    required List<Uri> relays,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
    List<String>? customMethods,
    List<String>? customNotifications,
  }) async {
    final walletServiceKeyPair =
        nip01.KeyPair.fromPrivateKey(privateKey: walletServicePrivateKey);
    final clientKeyPair = nip01.KeyPair.generate();

    final connection = WalletConnection(
      walletServiceKeyPair: walletServiceKeyPair,
      clientPubkey: clientKeyPair.publicKey,
      clientSecret: clientKeyPair.privateKey,
      relays: relays,
      methods: methods,
      notifications: notifications,
      lud16: lud16,
      customMethods: customMethods,
      customNotifications: customNotifications,
    );

    // Add relay to the relay manager in case it's not already added
    await _relayManagerService
        .addRelays(relays.map((relay) => relay.toString()).toList());

    // Send info event
    await _publishInfoEvent(connection: connection);

    // Subscribe to requests for the wallet service on the relay
    final subscription = nip01.Subscription.fromFilters([
      Nip47Filters.requests(walletServicePubkey: walletServiceKeyPair.publicKey)
    ]);
    await _relayManagerService.subscribe(subscription,
        relayUrls: relays.map((relay) => relay.toString()).toList());
    _connectionSubscriptions[connection.clientPubkey] = subscription;

    // Cache the connection
    _connections[connection.clientPubkey] = connection;

    return connection;
  }

  @override
  Future<void> connect(
    WalletConnection connection,
  ) async {
    final relays = connection.relays.map((relay) => relay.toString()).toList();
    if (connection.clientRelays != null) {
      relays.addAll(connection.clientRelays!.map((relay) => relay.toString()));
    }

    // Add relays to the relay manager in case they're not already added
    await _relayManagerService.addRelays(relays);

    // Send info event
    await _publishInfoEvent(connection: connection);

    // Subscribe to requests for the wallet service on the relay
    final subscription = nip01.Subscription.fromFilters([
      Nip47Filters.requests(
          walletServicePubkey: connection.walletServiceKeyPair.publicKey)
    ]);
    await _relayManagerService.subscribe(subscription, relayUrls: relays);
    _connectionSubscriptions[connection.clientPubkey] = subscription;

    // Cache the connection
    _connections[connection.clientPubkey] = connection;
  }

  @override
  Future<void> notify(Notification notification) {
    // TODO: implement notify
    throw UnimplementedError();
  }

  @override
  Future<void> respond(Response response, {int timeoutSec = 10}) async {
    final connection = _connections[response.clientPubkey];

    if (connection == null) {
      throw ResponseException('Connection not found');
    }

    final model = ResponseModel.fromEntity(response);
    final event =
        model.toEvent(walletServiceKeyPair: connection.walletServiceKeyPair);
    final signedEvent = event.sign(connection.walletServiceKeyPair);

    final isPublished = await _relayManagerService.publishEvent(
      signedEvent,
      relayUrls: connection.relays.map((relay) => relay.toString()).toList(),
      timeoutSec: timeoutSec,
    );

    if (!isPublished) {
      throw ResponseException('Failed to publish response');
    }
  }

  @override
  Future<void> dispose() async {
    await _eventSubscription.cancel();
    await _requestsController.close();

    for (final subscription in _connectionSubscriptions.values) {
      await _relayManagerService.unsubscribe(subscription.id);
    }
  }

  Future<void> _publishInfoEvent({
    required WalletConnection connection,
    int timeoutSec = 10,
  }) async {
    final infoEvent = InfoEvent(
      walletServicePubkey: connection.walletServiceKeyPair.publicKey,
      methods: connection.methods,
      notifications: connection.notifications,
      // Client relay url means this was a client-created connection,
      //  so the client's pubkey should be included as a tag in the event
      clientPubkey:
          connection.clientRelays != null ? connection.clientPubkey : null,
      // If the wallet service prefers a different relay than the client,
      // it should also be included in the tag with the client's pubkey
      walletRelay: connection.clientRelays != null &&
              connection.clientRelays!.contains(connection.relays.first)
          ? connection.relays.first
          : null,
      customMethods: connection.customMethods,
      customNotifications: connection.customNotifications,
    );

    final model = InfoEventModel.fromEntity(infoEvent);
    final event = model.toUnsignedEvent();
    final signedEvent = event.sign(connection.walletServiceKeyPair);

    // It should be published to the client's relays if it's a client-created connection
    // else it should be published to the wallet service's relays
    final publishingRelays = connection.clientRelays != null
        ? connection.clientRelays!.map((relay) => relay.toString()).toList()
        : connection.relays.map((relay) => relay.toString()).toList();

    final isPublished = await _relayManagerService.publishEvent(
      signedEvent,
      relayUrls: publishingRelays,
      timeoutSec: timeoutSec,
    );

    if (!isPublished) {
      throw InfoEventException('Failed to publish info event');
    }
  }

  Future<void> _handleRequest(nip01.SignedEvent request) async {
    final connection = _connections[request.pubkey];

    if (connection == null) {
      throw RequestException('Connection not found');
    }

    final model = RequestModel.fromEvent(
      request,
      walletServicePrivateKey: connection.walletServiceKeyPair.privateKey,
    );

    if (model.expiration != null) {
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      if (model.expiration! < now) {
        throw RequestException('Request expired');
      }
    }

    // TODO: check if the request method is permitted for the connection

    final entity = model.toEntity();

    _requestsController.add(entity);
  }

  @override
  Future<void> disconnect(WalletConnection connection) async {
    _connections.remove(connection.clientPubkey);
    final subscription =
        _connectionSubscriptions.remove(connection.clientPubkey);
    if (subscription != null) {
      return _relayManagerService.unsubscribe(subscription.id);
    }
  }
}

class InfoEventException implements Exception {
  final String message;

  InfoEventException(this.message);
}

class ResponseException implements Exception {
  final String message;

  ResponseException(this.message);
}

class RequestException implements Exception {
  final String message;

  RequestException(this.message);
}

class NotificationException implements Exception {
  final String message;

  NotificationException(this.message);
}
