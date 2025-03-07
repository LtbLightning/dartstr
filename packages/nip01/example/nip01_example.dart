import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/nip01.dart';
import 'package:nip01/src/domain/use_cases/set_profile_metadata_use_case.dart';

void main() async {
  final keyPair = KeyPair.generate();
  print('privateKey: ${keyPair.privateKey}');

  final pool = RelayManagerServiceImpl();
  pool.addRelays(['wss://relay.paywithflash.com']);

  final since = DateTime.now().millisecondsSinceEpoch ~/ 1000;

  final event = Event.unsigned(
    pubkey: keyPair.publicKey,
    createdAt: since,
    kind: EventKind.textNote.value,
    tags: [],
    content: "This is an event.",
  ).sign(keyPair);

  final isPublished = await pool.publishEvent(event);
  if (!isPublished) {
    throw Exception('Failed to publish event');
  }

  final setProfile = SetProfileMetadataUseCase(relays: pool);
  final isProfileSet = await setProfile.execute(
    userKeyPair: keyPair,
    metadata: Kind0Metadata(name: 'Alice'),
  );
  if (!isProfileSet) {
    throw Exception('Failed to set profile metadata');
  }

  // Subscribe to events on the relay
  final subscription = Subscription(
    id: SecretGenerator.secretHex(
      64, // SecretGenerator is part of the dartstr_utils package
    ),
    filters: [
      Filters(
        authors: [keyPair.publicKey],
        since: since,
      ),
    ],
  );
  final eventStream = await pool.subscribe(
    subscription,
    onEose: (events) {
      print('End of subscription events: $events');
    },
  );

  eventStream.listen((event) {
    print('Received event: $event');
  });
}
