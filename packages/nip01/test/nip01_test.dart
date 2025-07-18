import 'package:nip01/nip01.dart';
import 'package:nip01/src/data/models/event_model.dart';
import 'package:test/test.dart';

void main() {
  group('nip01', () {
    final testKeyPair = KeyPair.fromPrivateKey(
      privateKey:
          '5ee1c8000ab28edd64d74a7d951ac2dd559814887b1b9e1ac7c5f89e96125c12',
    );
    final testEvent = Event.create(
      keyPair: testKeyPair,
      createdAt: 1672175320,
      kind: EventKind.textNote.value,
      tags: [],
      content: "Ceci est une analyse du websocket",
    );

    setUp(() {
      // Additional setup goes here.
    });

    test('public key derivation', () {
      expect(
        testKeyPair.publicKey,
        '981cc2078af05b62ee1f98cff325aac755bf5c5836a265c254447b5933c6223b',
      );
    });
    test(
      'Event id calculation',
      () {
        expect(
          testEvent.id,
          '4b697394206581b03ca5222b37449a9cdca1741b122d78defc177444e2536f49',
        );
      },
    );

    group('Event signing', () {
      test(
        'Successful event signing',
        () {
          final eventModel = EventModel.fromEvent(testEvent);

          expect(testEvent.sig.isNotEmpty, true);
          expect(eventModel.isValid, true);
        },
      );
    });
  });
}

class InvalidUrlException {}
