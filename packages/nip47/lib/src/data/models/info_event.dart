import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/data/models/method.dart';
import 'package:nip47/src/enums/event_kind.dart';
import 'package:nip47/src/enums/notification_type.dart';

@immutable
class InfoEvent extends Equatable {
  final List<Method> permittedMethods;
  final List<NotificationType>? supportedNotifications;

  const InfoEvent({
    required this.permittedMethods,
    this.supportedNotifications,
  });

  factory InfoEvent.fromEvent(nip01.Event event) {
    final contentElements = event.content.split(' ');
    bool supportsNotifications = contentElements.contains('notifications');
    final permittedMethods = contentElements
        .where((element) => element != 'notifications')
        .map((plaintext) {
      return Method.fromPlaintext(plaintext);
    }).toList();

    final supportedNotifications = supportsNotifications
        ? event.tags
            .firstWhere((tag) => tag.first == 'notifications')[1]
            .split(' ')
            .map((notificationType) {
            return NotificationType.fromValue(notificationType);
          }).toList()
        : null;

    return InfoEvent(
      permittedMethods: permittedMethods,
      supportedNotifications: supportedNotifications,
    );
  }

  nip01.Event toSignedEvent({
    required nip01.KeyPair creatorKeyPair,
    required String connectionPubkey,
    required String relayUrl,
  }) {
    // NIP-47 spec: The content should be a plaintext string with the supported commands, space-separated.
    // If the node supports notifications, the string should also contain 'notifications'.
    final content =
        '${permittedMethods.map((method) => method.plaintext).join(' ')}'
        '${supportedNotifications != null && supportedNotifications!.isNotEmpty ? ' notifications' : ''}';

    final replaceableEventTag = [
      'a',
      '${EventKind.info.value}:$connectionPubkey:',
      relayUrl
    ];
    final notificationsTag = supportedNotifications != null
        ? [
            'notifications',
            supportedNotifications!.map((notificationType) {
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
  List<Object?> get props => [permittedMethods];
}
