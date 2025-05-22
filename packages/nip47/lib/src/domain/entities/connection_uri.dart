import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/domain/entities/connection.dart';
import 'package:nip47/src/domain/entities/method.dart';
import 'package:nip47/src/domain/entities/notification.dart';

part 'connection_uri.freezed.dart';

enum ConnectionUriScheme {
  walletConnect('nostr+walletconnect'),
  walletAuth('nostr+walletauth');

  final String scheme;

  const ConnectionUriScheme(this.scheme);

  static ConnectionUriScheme fromScheme(String scheme) {
    return ConnectionUriScheme.values.firstWhere(
      (type) => type.scheme == scheme,
      orElse: () => ConnectionUriScheme.walletConnect,
    );
  }
}

@freezed
sealed class ConnectionUri with _$ConnectionUri {
  const factory ConnectionUri.walletConnect({
    required String clientSecret,
    required String walletServicePubkey,
    required List<String> relays,
    String? lud16,
  }) = WalletConnectConnectionUri;
  const factory ConnectionUri.walletAuth({
    required String clientPubkey,
    required List<String> relays,
    String? name,
    Uri? icon,
    Uri? returnTo,
    int? expiresAt,
    int? maxAmountSat,
    BudgetRenewal? budgetRenewal,
    List<Method>? requestMethods,
    List<NotificationType>? notificationTypes,
    bool? isolated,
    Object? metadata,
    List<String>? customRequestMethods,
    List<String>? customNotificationTypes,
  }) = WalletAuthConnectionUri;
  const ConnectionUri._();

  String get clientPubkey {
    switch (this) {
      case WalletConnectConnectionUri walletConnect:
        final keyPair = nip01.KeyPair.fromPrivateKey(
          privateKey: walletConnect.clientSecret,
        );
        return keyPair.publicKey;
      case WalletAuthConnectionUri walletAuth:
        return walletAuth.clientPubkey;
    }
  }

  Uri get uri {
    switch (this) {
      case WalletConnectConnectionUri walletConnect:
        return Uri(
          scheme: ConnectionUriScheme.walletConnect.scheme,
          host: walletConnect.walletServicePubkey,
          queryParameters: {
            'relay': walletConnect.relays,
            'secret': walletConnect.clientSecret,
            if (walletConnect.lud16 != null) 'lud16': walletConnect.lud16!,
          },
        );
      case WalletAuthConnectionUri walletAuth:
        final requestMethods = walletAuth.requestMethods
            ?.map((method) => method.plaintext)
            .toList();
        if (walletAuth.customRequestMethods != null) {
          requestMethods?.addAll(walletAuth.customRequestMethods!);
        }
        final notificationTypes = walletAuth.notificationTypes
            ?.map((type) => type.plaintext)
            .toList();
        if (walletAuth.customNotificationTypes != null) {
          notificationTypes?.addAll(walletAuth.customNotificationTypes!);
        }
        return Uri(
          scheme: ConnectionUriScheme.walletAuth.scheme,
          host: walletAuth.clientPubkey,
          queryParameters: {
            'relay': walletAuth.relays,
            if (walletAuth.name != null) 'name': walletAuth.name,
            if (walletAuth.icon != null) 'icon': walletAuth.icon.toString(),
            if (walletAuth.returnTo != null)
              'return_to': walletAuth.returnTo.toString(),
            if (walletAuth.expiresAt != null)
              'expires_at': walletAuth.expiresAt.toString(),
            if (walletAuth.maxAmountSat != null)
              'max_amount': walletAuth.maxAmountSat! * 1000,
            if (walletAuth.budgetRenewal != null)
              'budget_renewal': walletAuth.budgetRenewal!.plaintext,
            if (walletAuth.requestMethods != null)
              'request_methods': requestMethods?.join(' '),
            if (walletAuth.notificationTypes != null)
              'notification_types': notificationTypes?.join(' '),
            if (walletAuth.isolated != null)
              'isolated': walletAuth.isolated.toString(),
            if (walletAuth.metadata != null)
              'metadata': jsonEncode(walletAuth.metadata),
          },
        );
    }
  }
}
