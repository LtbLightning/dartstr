import 'package:meta/meta.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:test/test.dart';

// Define specific custom methods
class MakeLiquidAddressMethod extends CustomMethod {
  static const instance = MakeLiquidAddressMethod();
  const MakeLiquidAddressMethod() : super('make_liquid_address');
}

class PayLiquidMethod extends CustomMethod {
  static const instance = PayLiquidMethod();
  const PayLiquidMethod() : super('pay_liquid');
}

@immutable
class MakeLiquidAddressRequest extends CustomRequest {
  const MakeLiquidAddressRequest({
    required super.id,
    required super.connectionPubkey,
    required super.createdAt,
  }) : super(method: MakeLiquidAddressMethod.instance);
}

@immutable
class PayLiquidRequest extends CustomRequest {
  final String address;

  const PayLiquidRequest({
    required super.id,
    required super.connectionPubkey,
    required super.createdAt,
    required this.address,
  }) : super(method: PayLiquidMethod.instance);
}

class MakeLiquidAddressResponse extends CustomResponse {
  final String address;

  MakeLiquidAddressResponse({
    required super.requestId,
    required super.connectionPubkey,
    required this.address,
  }) : super(
            resultType: MakeLiquidAddressMethod.instance.plaintext,
            result: {'address': address});

  @override
  List<Object?> get props => [...super.props, address];
}

class PayLiquidResponse extends CustomResponse {
  final String transactionId;

  PayLiquidResponse({
    required super.requestId,
    required super.connectionPubkey,
    required this.transactionId,
  }) : super(
            resultType: PayLiquidMethod.instance.plaintext,
            result: {'transaction_id': transactionId});

  @override
  List<Object?> get props => [...super.props, transactionId];
}

void main() {
  setUp(() {
    // Define custom methods
    final makeLiquidAddress = MakeLiquidAddressMethod.instance;
    final payLiquid = PayLiquidMethod.instance;

    // Register custom methods
    Method.registerCustomMethods([makeLiquidAddress, payLiquid]);

    // Define and register custom requests
    Request.registerCustomRequests({
      makeLiquidAddress: (Map<String, dynamic> map) => MakeLiquidAddressRequest(
            id: map['id'] as String,
            connectionPubkey: map['connection_pubkey'] as String,
            createdAt: map['created_at'] as int,
          ),
      payLiquid: (Map<String, dynamic> map) => PayLiquidRequest(
            id: map['id'] as String,
            connectionPubkey: map['connection_pubkey'] as String,
            createdAt: map['created_at'] as int,
            address: map['address'] as String,
          ),
    });
  });

  test(
    'adds a connection',
    () async {
      Uri relayUrl = Uri.parse('wss://relay.paywithflash.com');
      final nip01Repository = nip01.Nip01RepositoryImpl(
        relayClientsManager: nip01.RelayClientsManagerImpl(['$relayUrl']),
      );
      final walletServiceKeyPair = nip01.KeyPair.generate();
      final nwcWallet = WalletServiceImpl(
        nip01Repository: nip01Repository,
      );

      final methods = [
        Method.getInfo,
        Method.getBalance,
        Method.makeInvoice,
        Method.lookupInvoice,
        MakeLiquidAddressMethod.instance,
        PayLiquidMethod.instance,
      ];

      final notifications = [
        NotificationType.paymentReceived,
        NotificationType.paymentSent,
      ];

      final connection = await nwcWallet.addConnection(
        walletServiceKeyPair: walletServiceKeyPair,
        relayUrl: relayUrl,
        methods: methods,
        notifications: notifications,
      );

      final connectionUri = Uri.parse(connection.uri);
      expect(
        connectionUri.scheme,
        'nostr+walletconnect',
      );
      expect(connectionUri.host, walletServiceKeyPair.publicKey);
      expect(connectionUri.queryParameters['relay'], relayUrl.toString());
      expect(connectionUri.queryParameters['secret'], connection.secret);
      expect(
        connection.pubkey,
        nip01.KeyPair(
          privateKey: connection.secret,
        ).publicKey,
      );

      await nwcWallet.sendInfoEvent(
        relayUrl: relayUrl,
        methods: methods,
        notifications: notifications,
        walletServiceKeyPair: walletServiceKeyPair,
      );

      final infoEvents = await nip01Repository.getStoredEvents(
        [
          Filters.infoEvents(
            walletServicePubkey: walletServiceKeyPair.publicKey,
            relayUrl: connection.relayUrl,
          ),
        ],
        relayUrls: ['$relayUrl'],
      );

      expect(infoEvents.length, 1);
      final infoEvent = InfoEvent.fromEvent(infoEvents.first);

      print(
        'Petmitted methods in info event: ${infoEvent.methods.map((m) => m.plaintext).toList()}',
      );

      expect(infoEvent.methods, [
        Method.getInfo,
        Method.getBalance,
        Method.makeInvoice,
        Method.lookupInvoice,
        MakeLiquidAddressMethod.instance,
        PayLiquidMethod.instance,
      ]);
    },
  );
}
