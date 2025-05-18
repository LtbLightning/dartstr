import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/models/event_model.dart';
import 'package:nip47/src/domain/repositories/info_event_repository.dart';

class InfoEventRepositoryImpl implements InfoEventRepository {
  final NostrDataSource _nostrDataSource;

  InfoEventRepositoryImpl({
    required NostrDataSource nostrDataSource,
  }) : _nostrDataSource = nostrDataSource;

  @override
  Future<void> publish({
    required String walletServicePrivateKey,
    required List<String> methods,
    required List<String> relays,
    List<String>? notifications,
    String? clientPubkey,
    String? walletRelay,
  }) async {
    final walletServiceKeyPair =
        nip01.KeyPair.fromPrivateKey(privateKey: walletServicePrivateKey);

    InfoEventModel eventModel = InfoEventModel(
      walletServicePubkey: walletServiceKeyPair.publicKey,
      methods: methods,
      notifications: notifications,
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
