import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/domain/entities/entities.dart';
import 'package:nip47/src/nip47_base.dart';

class InfoEventModel {
  final String walletServicePubkey;
  final List<String> methods;
  final List<String> notifications;
  final String? clientPubkey;
  final String? walletRelay;

  const InfoEventModel({
    required this.walletServicePubkey,
    required this.methods,
    this.notifications = const [],
    this.clientPubkey,
    this.walletRelay,
  });

  factory InfoEventModel.fromEntity(InfoEvent infoEvent) {
    final methods =
        infoEvent.methods?.map((method) => method.plaintext).toList() ?? [];
    if (infoEvent.customMethods != null) {
      methods.addAll(infoEvent.customMethods!);
    }
    final notifications = infoEvent.notifications
            ?.map((notification) => notification.plaintext)
            .toList() ??
        [];
    if (infoEvent.customNotifications != null) {
      notifications.addAll(infoEvent.customNotifications!);
    }
    return InfoEventModel(
      walletServicePubkey: infoEvent.walletServicePubkey,
      methods: methods,
      notifications: notifications,
      clientPubkey: infoEvent.clientPubkey,
      walletRelay: infoEvent.walletRelay.toString(),
    );
  }

  factory InfoEventModel.fromEvent(nip01.SignedEvent event) {
    final contentElements = event.content.split(' ');
    bool supportsNotifications = contentElements.contains('notifications');
    final methods =
        contentElements.where((element) => element != 'notifications').toList();

    final notifications = supportsNotifications
        ? event.tags
            .firstWhere((tag) => tag.first == 'notifications')[1]
            .split(' ')
        : <String>[];

    // If the event is for a client-created connection, it should have a 'p' tag with the client's pubkey,
    // so the client can listen for events tagged with their pubkey.
    // It may also contain another relay the wallet service prefers instead of the one the info event was received on.
    List<String>? pTag;
    String? walletRelayUrl;
    String? clientPubkey;
    try {
      pTag = event.tags.firstWhere((tag) => tag.first == 'p');
      clientPubkey = pTag[1];
      walletRelayUrl = pTag.length > 2 ? pTag[2] : null;
    } catch (e) {
      log('No p tag found in event tags.');
    }

    return InfoEventModel(
      methods: methods,
      notifications: notifications,
      walletServicePubkey: event.pubkey,
      clientPubkey: clientPubkey,
      walletRelay: walletRelayUrl,
    );
  }

  nip01.UnsignedEvent toUnsignedEvent() {
    final supportedCommands = methods;
    final replaceableEventTag = [
      'a',
      '${EventKind.info.kind}:$walletServicePubkey:',
    ];
    List<String>? pTag;
    if (clientPubkey != null) {
      pTag = ['p', clientPubkey!];
      if (walletRelay != null) {
        pTag.add(walletRelay!);
      }
    }

    // Check for notification support.
    List<String>? notificationsTag;
    if (notifications.isNotEmpty) {
      // NIP-47 spec: The content should be a plaintext string with the supported commands, space-separated.
      // If the node supports notifications, the string should also contain 'notifications'.
      supportedCommands.add('notifications');
      notificationsTag = ['notifications', notifications.join(' ')];
    }

    String content = supportedCommands.join(' ');

    final event = nip01.UnsignedEvent(
      pubkey: walletServicePubkey,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.info.kind,
      // The info event should be a replaceable event, so add 'a' tag.
      tags: [
        replaceableEventTag,
        if (notificationsTag != null) notificationsTag,
        if (pTag != null) pTag,
      ],
      content: content,
    );

    return event;
  }
}
