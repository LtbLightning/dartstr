import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/enums/event_kind.dart';

class InfoEventModel {
  final String relayUrl;
  final String walletServicePubkey;
  final List<String> methods;
  final List<String> notifications;

  const InfoEventModel({
    required this.relayUrl,
    required this.walletServicePubkey,
    required this.methods,
    this.notifications = const [],
  });

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

    final aTag = event.tags.firstWhere((tag) => tag.first == 'a');
    final relayUrl = aTag[2];

    return InfoEventModel(
      methods: methods,
      notifications: notifications,
      walletServicePubkey: event.pubkey,
      relayUrl: relayUrl,
    );
  }

  nip01.UnsignedEvent toUnsignedEvent() {
    final supportedCommands = methods;
    final replaceableEventTag = [
      'a',
      '${EventKind.info.value}:$walletServicePubkey:',
      relayUrl
    ];

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
      kind: EventKind.info.value,
      // The info event should be a replaceable event, so add 'a' tag.
      tags: [
        replaceableEventTag,
        if (notificationsTag != null) notificationsTag,
      ],
      content: content,
    );

    return event;
  }
}
