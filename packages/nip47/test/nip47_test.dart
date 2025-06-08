import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:test/test.dart';

void main() {
  late final nip01.GetStoredEventsUseCase getStoredEventsUseCase;
  late final CreateWalletConnectionUseCase createWalletConnectionUseCase;
  late final GetRequestEventStreamUseCase getRequestEventStreamUseCase;
  late final SendResponseUseCase sendResponseUseCase;

  setUpAll(() {
    // Initialize nip01 dependencies
    final relayDataSource = nip01.WebSocketRelayDataSource();
    final relayRepository =
        nip01.RelayRepositoryImpl(relayDataSource: relayDataSource);
    final eventRepository =
        nip01.EventRepositoryImpl(relayDataSource: relayDataSource);
    final subscriptionRepository =
        nip01.SubscriptionRepositoryImpl(relayDataSource: relayDataSource);
    getStoredEventsUseCase = nip01.GetStoredEventsUseCase(
        eventRepository: eventRepository, relayRepository: relayRepository);
    final publishEventUseCase = nip01.PublishEventUseCase(
        eventRepository: eventRepository, relayRepository: relayRepository);
    final subscribeUseCase = nip01.SubscribeUseCase(
        subscriptionRepository: subscriptionRepository,
        eventRepository: eventRepository,
        relayRepository: relayRepository);
    final unsubscribeUseCase = nip01.UnsubscribeUseCase(
        subscriptionRepository: subscriptionRepository);

    // Initialize NIP-47 database
    final nip47Database = Nip47Database();
    // Initialize datasources
    final nostrDataSource = NostrDataSourceImpl(
      publishEventUseCase: publishEventUseCase,
      subscribeUseCase: subscribeUseCase,
      unsubscribeUseCase: unsubscribeUseCase,
    );
    final localRequestDataSource =
        SqliteLocalRequestDataSource(database: nip47Database);
    final localResponseDataSource =
        SqliteLocalResponseDataSource(database: nip47Database);
    // Initialize repositories
    final walletConnectionRepository = WalletConnectionRepositoryImpl(
      localWalletConnectionDataSource:
          SqliteLocalWalletConnectionDataSource(database: nip47Database),
    );
    final infoEventRepository = InfoEventRepositoryImpl(
      nostrDataSource: nostrDataSource,
    );
    final requestRepository = RequestRepositoryImpl(
      nostrDataSource: nostrDataSource,
      localRequestDataSource: localRequestDataSource,
      localWalletConnectionDataSource:
          SqliteLocalWalletConnectionDataSource(database: nip47Database),
    );
    final responseRepository = ResponseRepositoryImpl(
      nostrDataSource: nostrDataSource,
      localResponseDataSource: localResponseDataSource,
      localWalletConnectionDataSource:
          SqliteLocalWalletConnectionDataSource(database: nip47Database),
    );
    // Initialize use cases
    createWalletConnectionUseCase = CreateWalletConnectionUseCase(
      walletConnectionRepository: walletConnectionRepository,
      infoEventRepository: infoEventRepository,
      requestRepository: requestRepository,
    );
    getRequestEventStreamUseCase = GetRequestEventStreamUseCase(
      requestRepository: requestRepository,
    );
    sendResponseUseCase = SendResponseUseCase(
      responseRepository: responseRepository,
    );
  });
  setUp(() {});

  test(
    'adds a connection',
    () async {
      Uri relayUrl = Uri.parse('wss://relay.paywithflash.com');

      final walletServiceKeyPair = nip01.KeyPair.generate();

      final methods = [
        Method.getInfo,
        Method.getBalance,
        Method.makeInvoice,
        Method.lookupInvoice,
      ];
      final customMethods = ['make_liquid_address', 'pay_liquid'];

      final notifications = [
        NotificationType.paymentReceived,
        NotificationType.paymentSent,
      ];
      final customNotifications = ['liquid_payment_received'];

      final connection = await createWalletConnectionUseCase.execute(
        walletServiceKeyPair: walletServiceKeyPair,
        relays: [relayUrl],
        methods: methods,
        notifications: notifications,
        customMethods: customMethods,
        customNotifications: customNotifications,
      );

      expect(
        connection.uri.scheme,
        'nostr+walletconnect',
      );
      expect(connection.uri.host, walletServiceKeyPair.publicKey);
      expect(connection.uri.queryParameters['relay'], relayUrl.toString());
      expect(connection.uri.queryParameters['secret'], connection.clientSecret);
      expect(
        connection.clientPubkey,
        nip01.KeyPair.fromPrivateKey(
          privateKey: connection.clientSecret,
        ).publicKey,
      );

      final infoEvents = await getStoredEventsUseCase.execute(
        [
          Nip47Filters.infoEvents(
            walletServicePubkey: walletServiceKeyPair.publicKey,
          ),
        ],
        relayUrls: connection.relays.map((relay) => relay.toString()).toList(),
      );

      expect(infoEvents.length, 1);
      final event = infoEvents.first;
      final content = event.content.split(' ');
      expect(content.contains('notifications'), true);
      expect(content.contains('make_liquid_address'), true);
      expect(content.contains('pay_liquid'), true);
      expect(content.contains(Method.getInfo.plaintext), true);
      expect(content.contains(Method.getBalance.plaintext), true);
      expect(content.contains(Method.makeInvoice.plaintext), true);
      expect(content.contains(Method.lookupInvoice.plaintext), true);

      print(
        'info event: $event',
      );
    },
  );
}
