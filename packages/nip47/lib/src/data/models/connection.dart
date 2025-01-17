import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nip47/nip47.dart';

@immutable
class Connection extends Equatable {
  final String pubkey;
  final List<Method> methods;
  final List<NotificationType>? notifications;
  final String relayUrl;
  final String? uri;

  const Connection({
    required this.pubkey,
    required this.methods,
    this.notifications,
    required this.relayUrl,
    this.uri,
  });

  factory Connection.fromMap(Map<String, dynamic> map) {
    return Connection(
      pubkey: map['pubkey'] as String,
      methods: (map['methods'] as List)
          .map((e) => Method.fromPlaintext(e as String))
          .toList(),
      notifications: (map['notifications'] as List?)
          ?.map(
            (e) => NotificationType.fromValue(e as String),
          )
          .toList(),
      relayUrl: map['relayUrl'] as String,
      uri: map['uri'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pubkey': pubkey,
      'methods': methods.map((e) => e.plaintext).toList(),
      'notifications': notifications?.map((e) => e.notificationType).toList(),
      'relayUrl': relayUrl,
      'uri': uri,
    };
  }

  @override
  List<Object?> get props => [
        pubkey,
        methods,
        notifications,
        relayUrl,
        uri,
      ];
}
