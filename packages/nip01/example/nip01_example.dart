import 'package:nip01/nip01.dart';
import 'package:nip01/src/domain/use_cases/subscribe_use_case.dart';
import 'package:nip01/src/domain/use_cases/unsubscribe_use_case.dart';

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
  final SubscribeUseCase subscribeUseCase = SubscribeUseCase(
    subscriptionRepository: subscriptionRepository,
    eventRepository: eventRepository,
    relayRepository: relayRepository,
  );
  final UnsubscribeUseCase unsubscribeUseCase = UnsubscribeUseCase(
    subscriptionRepository: subscriptionRepository,
  );
  final GetProfileMetadataUseCase getProfileMetadataUseCase =
      GetProfileMetadataUseCase(
    eventRepository: eventRepository,
    relayRepository: relayRepository,
  );
  final PublishEventUseCase publishEventUseCase = PublishEventUseCase(
    eventRepository: eventRepository,
    relayRepository: relayRepository,
  );
  await addRelaysUseCase.execute(
    [Uri.parse('wss://relay.paywithflash.com')],
  );

  // Subscribe and listen to events
  final textNoteFilters = [
    Filters(
      authors: [keyPair.publicKey],
      kinds: [EventKind.textNote.value],
    ),
  ];
  final userMetadataFilters = [
    Filters(
      authors: [keyPair.publicKey],
      kinds: [EventKind.userMetadata.value],
    ),
  ];
  final textNoteSubscription = await subscribeUseCase.execute(
    filters: textNoteFilters,
  );
  final userMetadataSubscription = await subscribeUseCase.execute(
    filters: userMetadataFilters,
  );
  final textNoteListener = textNoteSubscription.eventStream.listen((event) {
    print('Received text note event: $event');
  });
  final userMetadataListener =
      userMetadataSubscription.eventStream.listen((event) {
    print('Received user metadata event: $event');
  });

  // Publish an event
  final event = Event.create(
    keyPair: keyPair,
    createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
    kind: EventKind.textNote.value,
    tags: [],
    content: "This is an event.",
  );
  final publishedToRelays = await publishEventUseCase.execute(event);
  if (publishedToRelays.isEmpty) {
    throw Exception('Failed to publish event');
  }

  // Set profile metadata
  final profileMetadata = Kind0Metadata(name: 'Alice');
  final profileEvent = Event.create(
    keyPair: keyPair,
    createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
    kind: EventKind.userMetadata.value,
    content: profileMetadata.content,
  );
  final setOnRelays = await publishEventUseCase.execute(profileEvent);
  if (setOnRelays.isEmpty) {
    throw Exception('Failed to set profile metadata');
  }

  // Get profile metadata
  final profileMetadataResult = await getProfileMetadataUseCase.execute(
    keyPair.publicKey,
  );
  print('Profile metadata from stored events: $profileMetadataResult');

  // Unsubscribe from events
  await unsubscribeUseCase.execute(textNoteSubscription.subscription);
  await unsubscribeUseCase.execute(userMetadataSubscription.subscription);

  // Publish a new event and it should not be received and printed anymore
  final newEvent = Event.create(
    keyPair: keyPair,
    createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
    kind: EventKind.textNote.value,
    tags: [],
    content: "This is a new event.",
  );
  final newPublishedToRelays = await publishEventUseCase.execute(newEvent);
  if (newPublishedToRelays.isEmpty) {
    throw Exception('Failed to publish new event');
  }

  // Delay to allow the event to be processed
  await Future.delayed(Duration(seconds: 5));

  // Cancel the listeners
  await textNoteListener.cancel();
  await userMetadataListener.cancel();
}
