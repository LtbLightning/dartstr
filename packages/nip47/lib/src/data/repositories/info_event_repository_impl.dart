import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';
import 'package:nip47/src/domain/repositories/info_event_repository.dart';

class InfoEventRepositoryImpl implements InfoEventRepository {
  final NostrDataSource _nostrDataSource;

  InfoEventRepositoryImpl({
    required NostrDataSource nostrDataSource,
  }) : _nostrDataSource = nostrDataSource;

  @override
  Future<void> publish({
    required String walletServicePrivateKey,
    List<Method> methods = const [],
    List<NotificationType> notifications = const [],
    List<String> customMethods = const [],
    List<String> customNotifications = const [],
    required List<String> relays,
    String? clientPubkey,
    String? walletRelay,
  }) async {
    final walletServiceKeyPair =
        nip01.KeyPair.fromPrivateKey(privateKey: walletServicePrivateKey);

    final allMethods = [
      ...methods.map((method) => method.plaintext),
      ...customMethods,
    ];
    final allNotifications = [
      ...notifications.map((notification) => notification.plaintext),
      ...customNotifications,
    ];

    InfoEventModel eventModel = InfoEventModel(
      walletServicePubkey: walletServiceKeyPair.publicKey,
      methods: allMethods,
      notifications: allNotifications,
      clientPubkey: clientPubkey,
      walletRelay: walletRelay,
      createdAt: DateTime.now(),
    );

    final result = await _nostrDataSource.publishEvent(
      eventModel,
      authorPrivateKey: walletServicePrivateKey,
      relays: relays,
    );

    final relaysPublishedTo = result.relaysPublishedTo;

    if (relaysPublishedTo.isEmpty) {
      throw FailedToPublishInfoEventException(
        'No relays were published to. Please check your connection.',
      );
    }

    // Publish the event to the wallet relay as well if provided, so it's
    // available there as well after the client switches to the wallet relay.
    // This isn't described in the spec, but I think it's a good idea to do it.
    if (walletRelay != null) {
      final walletRelayResult = await _nostrDataSource.publishEvent(
        eventModel,
        authorPrivateKey: walletServicePrivateKey,
        relays: [walletRelay],
      );

      if (walletRelayResult.relaysPublishedTo.isEmpty) {
        log('[InfoEventRepositoryImpl]: Failed to publish to wallet relay.');
      }
    }
  }
}

class FailedToPublishInfoEventException implements Exception {
  final String message;

  FailedToPublishInfoEventException(this.message);

  @override
  String toString() {
    return '[InfoEventRepositoryImpl]: $message';
  }
}
