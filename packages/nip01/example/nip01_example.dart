import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/nip01.dart';
import 'package:nip01/src/data/data_sources/relay_data_source.dart';
import 'package:nip01/src/data/repositories/event_repository_impl.dart';
import 'package:nip01/src/data/repositories/relay_repository_impl.dart';
import 'package:nip01/src/data/repositories/subscription_repository_impl.dart';

void main() async {
  final keyPair = KeyPair.generate();
  print('privateKey: ${keyPair.privateKey}');

  final relayDataSource = WebSocketRelayDataSource();
  final relayRepository = RelayRepositoryImpl(
    relayDataSource: relayDataSource,
  );
  final eventRepository = EventRepositoryImpl(
    relayDataSource: relayDataSource,
  );
  final subscriptionRepository = SubscriptionRepositoryImpl(
    relayDataSource: relayDataSource,
  );

  final AddRelaysUseCase addRelaysUseCase = AddRelaysUseCase(
    relayRepository: relayRepository,
  );
  final GetProfileMetadataUseCase getProfileMetadataUseCase =
      GetProfileMetadataUseCase(
    eventRepository: eventRepository,
    relayRepository: relayRepository,
  );
  final SetProfileMetadataUseCase setProfileMetadataUseCase =
      SetProfileMetadataUseCase(
    eventRepository: eventRepository,
    relayRepository: relayRepository,
  );
  final RemoveRelayUseCase removeRelayUseCase = RemoveRelayUseCase(
    relayRepository: relayRepository,
  );
  await addRelaysUseCase.execute(
    [Uri.parse('wss://relay.paywithflash.com')],
  );

  final since = DateTime.now().millisecondsSinceEpoch ~/ 1000;

  final event = Event.create(
    keyPair: keyPair,
    createdAt: since,
    kind: EventKind.textNote.value,
    tags: [],
    content: "This is an event.",
  );

  final publishedToRelays = await eventRepository.publishEvent(event);
  if (publishedToRelays.isEmpty) {
    throw Exception('Failed to publish event');
  }

  final setOnRelays = await setProfileMetadataUseCase.execute(
    userKeyPair: keyPair,
    metadata: Kind0Metadata(name: 'Alice'),
  );
  if (setOnRelays.isEmpty) {
    throw Exception('Failed to set profile metadata');
  }

  // Subscribe to events on the relay
  final subscriptionId = SecretGenerator.secretHex(64);
  final filters = [
    Filters(
      authors: [keyPair.publicKey],
      since: since,
    ),
  ];
  final subscription = await subscriptionRepository.subscribe(
    subscriptionId: subscriptionId,
    filters: filters,
  );

  eventRepository.eventStream.listen((event) {
    print('Received event: $event');
  });
}
