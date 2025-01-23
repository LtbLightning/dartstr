import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nip47/nip47.dart';

@immutable
class Connection extends Equatable {
  final String pubkey;
  final String walletServicePubkey;
  final String relayUrl;
  final String secret;
  final List<Method> methods;
  final List<NotificationType>? notifications;
  final String? lud16;

  const Connection({
    required this.pubkey,
    required this.walletServicePubkey,
    required this.relayUrl,
    required this.secret,
    required this.methods,
    this.notifications,
    this.lud16,
  });

  factory Connection.fromMap(Map<String, dynamic> map) {
    return Connection(
      pubkey: map['pubkey'] as String,
      walletServicePubkey: map['walletServicePubkey'] as String,
      relayUrl: map['relayUrl'] as String,
      secret: map['secret'] as String,
      methods: (map['methods'] as List)
          .map((e) => Method.fromPlaintext(e as String))
          .toList(),
      notifications: (map['notifications'] as List?)
          ?.map(
            (e) => NotificationType.fromValue(e as String),
          )
          .toList(),
      lud16: map['lud16'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pubkey': pubkey,
      'walletServicePubkey': walletServicePubkey,
      'relayUrl': relayUrl,
      'secret': secret,
      'methods': methods.map((e) => e.plaintext).toList(),
      'notifications': notifications?.map((e) => e.notificationType).toList(),
      'lud16': lud16,
    };
  }

  String get uri => '${Constants.uriProtocol}://'
      '$walletServicePubkey?'
      'relay=$relayUrl'
      '&secret=$secret'
      '${lud16 != null ? '&lud16=$lud16' : ''}';

  @override
  List<Object?> get props => [
        pubkey,
        walletServicePubkey,
        relayUrl,
        secret,
        methods,
        notifications,
      ];
}
