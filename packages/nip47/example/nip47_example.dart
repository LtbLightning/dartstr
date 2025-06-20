import 'dart:developer';

import 'package:nip01/nip01.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';

Future<void> main() async {
  // Initialize nip01 dependencies
  final relayDataSource = nip01.WebSocketRelayDataSource();
  final relayRepository =
      nip01.RelayRepositoryImpl(relayDataSource: relayDataSource);
  final eventRepository =
      nip01.EventRepositoryImpl(relayDataSource: relayDataSource);
  final subscriptionRepository =
      nip01.SubscriptionRepositoryImpl(relayDataSource: relayDataSource);
  final publishEventUseCase = nip01.PublishEventUseCase(
      eventRepository: eventRepository, relayRepository: relayRepository);
  final subscribeUseCase = nip01.SubscribeUseCase(
      subscriptionRepository: subscriptionRepository,
      eventRepository: eventRepository,
      relayRepository: relayRepository);
  final unsubscribeUseCase =
      nip01.UnsubscribeUseCase(subscriptionRepository: subscriptionRepository);

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
  final createWalletConnectionUseCase = CreateWalletConnectionUseCase(
    walletConnectionRepository: walletConnectionRepository,
    infoEventRepository: infoEventRepository,
    requestRepository: requestRepository,
  );
  final getRequestEventStreamUseCase = GetRequestEventStreamUseCase(
    requestRepository: requestRepository,
  );
  final sendResponseUseCase = SendResponseUseCase(
    responseRepository: responseRepository,
  );

  // Choose a dedicated relay for a connection
  const relayUrl = 'wss://nwclay.paywithflash.com';

  // Generate key pairs for wallet services
  final walletServiceKeyPair = KeyPair.generate();
  log('Wallet service pubkey: ${walletServiceKeyPair.publicKey}');
  final walletServiceKeyPair2 = KeyPair.generate();
  log('Wallet service pubkey2: ${walletServiceKeyPair2.publicKey}');

  final methods = [
    Method.getInfo,
    Method.getBalance,
    Method.listTransactions,
  ];
  final customMethods = ['make_liquid_address', 'pay_liquid'];

  // Add a new connection
  final connectionUri = await createWalletConnectionUseCase.execute(
    walletServiceKeyPair: walletServiceKeyPair,
    relays: [Uri.parse(relayUrl)],
    methods: methods,
    customMethods: customMethods,
  );
  log('Connection created: ${connectionUri.clientPubkey}');
  print('Connection URI: ${connectionUri.uri}');

  // Listen for nwc requests
  final sub = getRequestEventStreamUseCase.execute().listen((event) async {
    print('Request event: $event');
    switch (event.request) {
      case GetBalanceRequest request:
        try {
          final response = Response.getBalance(
              requestId: event.eventId,
              clientPubkey: request.clientPubkey,
              balanceSat: 10101);
          await sendResponseUseCase.execute(
            response,
            walletServicePrivateKey: walletServiceKeyPair.privateKey,
            waitForOkMessage: false,
          );
        } catch (e) {
          print('Error responding to GetBalanceRequest: $e');
        }
      case GetInfoRequest request:
        try {
          final response = Response.getInfo(
            requestId: event.eventId,
            clientPubkey: request.clientPubkey,
            alias: 'Dartstr Wallet',
            color: '#FF0000',
            network: Network.mainnet,
            methods: methods,
          );
          await sendResponseUseCase.execute(
            response,
            walletServicePrivateKey: walletServiceKeyPair.privateKey,
            waitForOkMessage: false,
          );
        } catch (e) {
          print('Error responding to GetInfoRequest: $e');
        }
      default:
        print('TODO: handle other requests');
    }
  });

  Future.delayed(Duration(minutes: 10), () {
    sub.cancel();
  });
}
