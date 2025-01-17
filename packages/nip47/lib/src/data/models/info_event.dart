import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/models/method.dart';
import 'package:nip47/src/enums/event_kind.dart';
import 'package:nip47/src/enums/notification_type.dart';

@immutable
class InfoEvent extends Equatable {
  final List<Method> methods;
  final List<NotificationType>? notifications;

  const InfoEvent({
    required this.methods,
    this.notifications,
  });

  factory InfoEvent.fromEvent(nip01.Event event) {
    final contentElements = event.content.split(' ');
    bool supportsNotifications = contentElements.contains('notifications');
    final methods = contentElements
        .where((element) => element != 'notifications')
        .map((plaintext) {
      return Method.fromPlaintext(plaintext);
    }).toList();

    final notifications = supportsNotifications
        ? event.tags
            .firstWhere((tag) => tag.first == 'notifications')[1]
            .split(' ')
            .map((notificationType) {
            return NotificationType.fromValue(notificationType);
          }).toList()
        : null;

    return InfoEvent(
      methods: methods,
      notifications: notifications,
    );
  }

  nip01.Event toSignedEvent({
    required nip01.KeyPair creatorKeyPair,
    required String connectionPubkey,
    required String relayUrl,
  }) {
    // NIP-47 spec: The content should be a plaintext string with the supported commands, space-separated.
    // If the node supports notifications, the string should also contain 'notifications'.
    final content = '${methods.map((method) => method.plaintext).join(' ')}'
        '${notifications != null && notifications!.isNotEmpty ? ' notifications' : ''}';

    final replaceableEventTag = [
      'a',
      '${EventKind.info.value}:$connectionPubkey:',
      relayUrl
    ];
    final notificationsTag = notifications != null
        ? [
            'notifications',
            notifications!.map((notificationType) {
              return notificationType.notificationType;
            }).join(' ')
          ]
        : null;

    final partialEvent = nip01.Event(
      pubkey: creatorKeyPair.publicKey,
      createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      kind: EventKind.info.value,
      // The info event should be a replaceable event, so add 'a' tag.
      tags: [
        replaceableEventTag,
        if (notificationsTag != null) notificationsTag,
      ],
      content: content,
    );

    final signedNostrEvent = partialEvent.sign(creatorKeyPair);

    return signedNostrEvent;
  }

  @override
  List<Object?> get props => [methods];
}
