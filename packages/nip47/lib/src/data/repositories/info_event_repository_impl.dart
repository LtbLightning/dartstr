import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/models/info_event_model.dart';
import 'package:nip47/src/domain/entities/info_event.dart';
import 'package:nip47/src/domain/repositories/info_event_repository.dart';

class InfoEventRepositoryImpl implements InfoEventRepository {
  final NostrDataSource _nostrDataSource;

  InfoEventRepositoryImpl({
    required NostrDataSource nostrDataSource,
  }) : _nostrDataSource = nostrDataSource;

  @override
  Future<void> publish(
    InfoEvent infoEvent, {
    required String walletServicePrivateKey,
    required List<String> relays,
  }) async {
    final walletServiceKeyPair =
        nip01.KeyPair.fromPrivateKey(privateKey: walletServicePrivateKey);

    final allMethods = [
      ...infoEvent.methods?.map((method) => method.plaintext) ?? <String>[],
      ...infoEvent.customMethods ?? <String>[],
    ];
    final allNotifications = [
      ...infoEvent.notifications
              ?.map((notification) => notification.plaintext) ??
          <String>[],
      ...infoEvent.customNotifications ?? <String>[],
    ];

    final model = NewInfoEventModel(
      walletServicePubkey: walletServiceKeyPair.publicKey,
      methods: allMethods,
      notifications: allNotifications,
      clientPubkey: infoEvent.clientPubkey,
      walletRelay: infoEvent.walletRelay,
    );

    final result = await _nostrDataSource.publishInfoEvent(
      model,
      authorPrivateKey: walletServicePrivateKey,
      relays: relays,
    );

    if (result.relays.isEmpty) {
      throw FailedToPublishInfoEventException(
        'No relays were published to. Please check your connection.',
      );
    }

    // Publish the event to the wallet relay as well if provided, so it's
    // available there as well after the client switches to the wallet relay.
    // This isn't described in the spec, but I think it's a good idea to do it.
    if (infoEvent.walletRelay != null) {
      final walletRelayResult = await _nostrDataSource.publishInfoEvent(
        model,
        authorPrivateKey: walletServicePrivateKey,
        relays: [infoEvent.walletRelay!],
      );

      if (walletRelayResult.relays.isEmpty) {
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
