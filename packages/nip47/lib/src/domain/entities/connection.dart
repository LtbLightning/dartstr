import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'connection.freezed.dart';
part 'connection.g.dart';

enum ConnectionType {
  wallet('nostr+walletconnect'),
  client('nostr+walletauth');

  final String protocol;

  const ConnectionType(this.protocol);

  static ConnectionType fromProtocol(String protocol) {
    switch (protocol) {
      case 'nostr+walletconnect':
        return wallet;
      case 'nostr+walletauth':
        return client;
      default:
        throw ArgumentError('Invalid protocol: $protocol');
    }
  }
}

@freezed
sealed class Connection with _$Connection {
  const factory Connection.wallet({
    required String pubkey,
    required String walletServicePubkey,
    required String relayUrl,
    required String secret,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
  }) = WalletConnection;
  const factory Connection.client({
    required String pubkey,
    required String clientPubkey,
    required String relayUrl,
  }) = ClientConnection;
  const Connection._();

  factory Connection.fromJson(Map<String, dynamic> json) =>
      _$ConnectionFromJson(json);
}
