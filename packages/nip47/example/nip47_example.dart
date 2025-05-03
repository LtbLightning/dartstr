import 'dart:developer';

import 'package:nip01/nip01.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';

Future<void> main() async {
  // Generate a key pair for the wallet
  final walletServiceKeyPair = KeyPair.generate();
  log('Wallet service pubkey: ${walletServiceKeyPair.publicKey}');
  final walletServiceKeyPair2 = KeyPair.generate();
  log('Wallet service pubkey2: ${walletServiceKeyPair2.publicKey}');

  final relayManager = nip01.RelayManagerServiceImpl();

  final walletServiceRepository = WalletServiceRepositoryImpl(
    relayManagerService: relayManager,
  );

  // Choose a dedicated relay for a connection
  const relayUrl = 'wss://relay.paywithflash.com';

  // Restore existing connections
  final existingConnections = <WalletConnection>[
    /* existing connections here */
  ];
  for (final connection in existingConnections) {
    await walletServiceRepository.connect(connection);
  }

  final methods = [
    Method.getInfo,
    Method.getBalance,
    Method.makeInvoice,
    Method.lookupInvoice,
  ];
  final customMethods = ['make_liquid_address', 'pay_liquid'];

  // Add a new connection
  final connection = await walletServiceRepository.createConnection(
    walletServicePrivateKey: walletServiceKeyPair.privateKey,
    relays: [Uri.parse(relayUrl)],
    methods: methods,
    customMethods: customMethods,
  );
  log('Connection created: ${connection.clientPubkey}');
  print('Connection URI: ${connection.uri}');

  final connection2 = await walletServiceRepository.createConnection(
    walletServicePrivateKey: walletServiceKeyPair2.privateKey,
    relays: [Uri.parse(relayUrl)],
    methods: methods,
    customMethods: customMethods,
  );
  log('Connection created2: ${connection2.clientPubkey}');
  log('Connection2 URI: ${connection2.uri}');

  // Listen for nwc requests
  final sub = walletServiceRepository.requests.listen((request) async {
    print('Request: $request');
    switch (request) {
      case GetInfoRequest request:
        final infoResult = InfoResult(
          methods: methods,
          customMethods: customMethods,
          alias: 'kumulynja',
          color: '#FF9900',
          network: BitcoinNetwork.signet,
          blockHeight: 1220149,
          blockHash:
              '00000237e2ad85bbbe9db8d20ce44054f25b05a56318e30d8f4e1791b228157c',
        );

        try {
          await walletServiceRepository.respond(
            Response.getInfo(
              requestId: request.id,
              clientPubkey: request.clientPubkey,
              createdAt: DateTime.now().millisecondsSinceEpoch,
              info: infoResult,
            ),
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
