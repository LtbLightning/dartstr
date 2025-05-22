import 'dart:developer';

import 'package:nip01/nip01.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/data_sources/local_request_data_source.dart';
import 'package:nip47/src/data/data_sources/local_response_data_source.dart';
import 'package:nip47/src/data/data_sources/local_wallet_connection_data_source.dart';
import 'package:nip47/src/data/data_sources/nostr_data_source.dart';
import 'package:nip47/src/data/repositories/info_event_repository_impl.dart';
import 'package:nip47/src/data/repositories/request_repository_impl.dart';
import 'package:nip47/src/data/repositories/response_repository_impl.dart';
import 'package:nip47/src/data/repositories/wallet_connection_repository_impl.dart';
import 'package:nip47/src/database/database.dart';
import 'package:nip47/src/domain/use_cases/create_wallet_connection_use_case.dart';

Future<void> main() async {
  // Generate a key pair for the wallet
  final walletServiceKeyPair = KeyPair.generate();
  log('Wallet service pubkey: ${walletServiceKeyPair.publicKey}');
  final walletServiceKeyPair2 = KeyPair.generate();
  log('Wallet service pubkey2: ${walletServiceKeyPair2.publicKey}');

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
  final nip47Database = Nip47Database();
  final nostrDataSource = NostrDataSourceImpl(
    publishEventUseCase: publishEventUseCase,
    subscribeUseCase: subscribeUseCase,
  );
  final localRequestDataSource =
      SqliteLocalRequestDataSource(database: nip47Database);
  final localResponseDataSource =
      SqliteLocalResponseDataSource(database: nip47Database);
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
  );
  final responseRepository = ResponseRepositoryImpl(
    nostrDataSource: nostrDataSource,
    localResponseDataSource: localResponseDataSource,
    localWalletConnectionDataSource:
        SqliteLocalWalletConnectionDataSource(database: nip47Database),
  );
  final createWalletConnectionUseCase = CreateWalletConnectionUseCase(
    walletConnectionRepository: walletConnectionRepository,
    infoEventRepository: infoEventRepository,
    requestRepository: requestRepository,
  );

  // Choose a dedicated relay for a connection
  const relayUrl = 'wss://relay.paywithflash.com';

  final methods = [
    Method.getInfo,
    Method.getBalance,
    Method.listTransactions,
  ];
  //final customMethods = ['make_liquid_address', 'pay_liquid'];

  // Add a new connection
  final connectionUri = await createWalletConnectionUseCase.execute(
    walletServiceKeyPair: walletServiceKeyPair,
    relays: [Uri.parse(relayUrl)],
    methods: methods,
  );
  log('Connection created: ${connectionUri.clientPubkey}');
  print('Connection URI: ${connectionUri.uri}');

  // Listen for nwc requests
  final sub = requestRepository.requestStream.listen((request) async {
    print('Request: $request');
    switch (request) {
      case GetBalanceRequest request:
        try {
          await responseRepository.sendGetBalanceResponse(
            requestId: request.id,
            walletServicePrivateKey: walletServiceKeyPair.privateKey,
            balanceSat: 10101,
          );
        } catch (e) {
          print('Error responding to GetBalanceRequest: $e');
        }
      case GetInfoRequest request:
        try {
          await responseRepository.sendGetInfoResponse(
            requestId: request.id,
            walletServicePrivateKey: walletServiceKeyPair.privateKey,
            alias: 'Dartstr Wallet',
            color: '#FF0000',
            methods: methods,
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
