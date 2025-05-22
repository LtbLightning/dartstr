import 'dart:developer';

import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';
import 'package:nip47/src/data/models/event_model.dart';

class InfoEventMapper {
  static InfoEventModel modelFromEntity(InfoEvent infoEvent) {
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
      id: infoEvent.id,
      relay: infoEvent.relay,
      createdAt: infoEvent.createdAt,
      walletServicePubkey: infoEvent.walletServicePubkey,
      methods: methods,
      notifications: notifications,
      clientPubkey: infoEvent.clientPubkey,
      walletRelay: infoEvent.walletRelay.toString(),
    );
  }

  static InfoEvent modelToEntity(
    InfoEventModel model,
  ) {
    return InfoEvent(
      id: model.id!,
      relay: model.relay!,
      createdAt: model.createdAt,
      walletServicePubkey: model.walletServicePubkey,
      methods:
          model.methods.map((method) => Method.fromPlaintext(method)).toList(),
      notifications: model.notifications
          ?.map((notification) => NotificationType.fromPlaintext(notification))
          .toList(),
      clientPubkey: model.clientPubkey,
      walletRelay: model.walletRelay,
    );
  }

  static InfoEventModel modelFromEventMessage(nip01.EventMessage event) {
    final contentElements = event.event.content.split(' ');
    bool supportsNotifications = contentElements.contains('notifications');
    final methods =
        contentElements.where((element) => element != 'notifications').toList();

    final notifications = supportsNotifications
        ? event.event.tags
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
      pTag = event.event.tags.firstWhere((tag) => tag.first == 'p');
      clientPubkey = pTag[1];
      walletRelayUrl = pTag.length > 2 ? pTag[2] : null;
    } catch (e) {
      log('No p tag found in event tags.');
    }

    return InfoEventModel(
      id: event.event.id,
      relay: event.relayUrl,
      createdAt:
          DateTime.fromMillisecondsSinceEpoch(event.event.createdAt * 1000),
      methods: methods,
      notifications: notifications,
      walletServicePubkey: event.event.pubkey,
      clientPubkey: clientPubkey,
      walletRelay: walletRelayUrl,
    );
  }

  static nip01.Event modelToEvent(
    InfoEventModel model, {
    required nip01.KeyPair walletServiceKeyPair,
  }) {
    final supportedCommands = model.methods;
    final replaceableEventTag = [
      'a',
      '${EventKind.info.kind}:${walletServiceKeyPair.publicKey}:',
    ];
    List<String>? pTag;
    if (model.clientPubkey != null) {
      pTag = ['p', model.clientPubkey!];
      if (model.walletRelay != null) {
        pTag.add(model.walletRelay!);
      }
    }

    // Check for notification support.
    List<String>? notificationsTag;
    if (model.notifications != null && model.notifications!.isNotEmpty) {
      // NIP-47 spec: The content should be a plaintext string with the supported commands, space-separated.
      // If the node supports notifications, the string should also contain 'notifications'.
      supportedCommands.add('notifications');
      notificationsTag = ['notifications', model.notifications!.join(' ')];
    }

    String content = supportedCommands.join(' ');

    final event = nip01.Event.create(
      keyPair: walletServiceKeyPair,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: model.kind,
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
