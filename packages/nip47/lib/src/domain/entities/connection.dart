import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'connection.freezed.dart';

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

enum BudgetRenewal {
  never('never'),
  daily('daily'),
  weekly('weekly'),
  monthly('monthly'),
  yearly('yearly');

  final String plaintext;

  const BudgetRenewal(this.plaintext);

  static BudgetRenewal fromPlaintext(String plaintext) {
    return BudgetRenewal.values.firstWhere(
      (renewal) => renewal.plaintext == plaintext,
      orElse: () => BudgetRenewal.never,
    );
  }
}

@freezed
sealed class Connection with _$Connection {
  const factory Connection.wallet({
    required KeyPair walletServiceKeyPair,
    required String clientPubkey,
    String? clientSecret,
    Uri? clientRelayUrl,
    required Uri relayUrl,
    required List<Method> methods,
    List<NotificationType>? notifications,
    String? lud16,
  }) = WalletConnection;
  const factory Connection.client({
    required KeyPair clientKeyPair,
    required Uri relayUrl,
    String? name,
    Uri? icon,
    Uri? returnTo,
    int? expiresAt,
    BigInt? maxAmountSat,
    BudgetRenewal? budgetRenewal,
    List<Method>? requestMethods,
    List<NotificationType>? notificationTypes,
    bool? isolated,
    Object? metadata,
  }) = ClientConnection;
  const Connection._();

  Uri get uri {
    switch (this) {
      case WalletConnection walletConnection:
        return Uri(
          scheme: ConnectionType.wallet.protocol,
          host: walletConnection.walletServiceKeyPair.publicKey,
          queryParameters: {
            'relay': walletConnection.relayUrl,
            'secret': walletConnection.clientKeyPair.privateKey,
            if (walletConnection.lud16 != null)
              'lud16': walletConnection.lud16!,
          },
        );
      case ClientConnection clientConnection:
        return Uri(
          scheme: ConnectionType.client.protocol,
          host: clientConnection.clientPubkey,
          queryParameters: {
            'relay': clientConnection.relayUrl,
            if (clientConnection.name != null) 'name': clientConnection.name,
            if (clientConnection.icon != null)
              'icon': clientConnection.icon.toString(),
            if (clientConnection.returnTo != null)
              'return_to': clientConnection.returnTo.toString(),
            if (clientConnection.expiresAt != null)
              'expires_at': clientConnection.expiresAt.toString(),
            if (clientConnection.maxAmountSat != null)
              'max_amount': clientConnection.maxAmountSat! * BigInt.from(1000),
            if (clientConnection.budgetRenewal != null)
              'budget_renewal': clientConnection.budgetRenewal!.plaintext,
            if (clientConnection.requestMethods != null)
              'request_methods': clientConnection.requestMethods
                  ?.map((method) => method.plaintext)
                  .join(' '),
            if (clientConnection.notificationTypes != null)
              'notification_types': clientConnection.notificationTypes
                  ?.map((type) => type.value)
                  .join(' '),
            if (clientConnection.isolated != null)
              'isolated': clientConnection.isolated.toString(),
            if (clientConnection.metadata != null)
              'metadata': jsonEncode(clientConnection.metadata),
          },
        );
    }
  }
}
