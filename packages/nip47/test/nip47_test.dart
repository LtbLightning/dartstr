import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  test(
    'adds a connection',
    () async {
      Uri relayUrl = Uri.parse('wss://relay.paywithflash.com');
      final relayManager = nip01.RelayManagerServiceImpl();
      await relayManager.addRelays([relayUrl.toString()]);
      final walletServiceKeyPair = nip01.KeyPair.generate();
      final walletService = WalletServiceRepositoryImpl(
        relayManagerService: relayManager,
      );

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

      final connection = await walletService.createConnection(
        walletServicePrivateKey: walletServiceKeyPair.privateKey,
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
          privateKey: connection.clientSecret!,
        ).publicKey,
      );

      final infoEvents = await relayManager.getStoredEvents(
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
