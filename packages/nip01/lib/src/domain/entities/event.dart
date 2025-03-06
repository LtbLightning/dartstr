import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/key_pair.dart';
import 'package:bip340/bip340.dart' as bip340;

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
sealed class Event with _$Event {
  const factory Event.signed({
    required String id,
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
    required String sig,
  }) = SignedEvent;
  const factory Event.unsigned({
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
  }) = UnsignedEvent;
  const Event._();

  factory Event.sign(UnsignedEvent event, {required KeyPair keyPair}) {
    if (keyPair.publicKey != event.pubkey) {
      throw ArgumentError(
        'Invalid keypair to sign event with pubkey: ${event.pubkey}',
      );
    }

    final signature = keyPair.sign(event.id);

    return Event.signed(
      id: event.id,
      pubkey: event.pubkey,
      createdAt: event.createdAt,
      kind: event.kind,
      tags: event.tags,
      content: event.content,
      sig: signature,
    );
  }

  String get id {
    final data = [
      0,
      pubkey,
      createdAt,
      kind,
      tags,
      content,
    ];

    final jsonString = jsonEncode(data);
    final bytes = utf8.encode(jsonString);
    final digest = sha256.convert(bytes);
    return hex.encode(digest.bytes);
  }

  bool verify() {
    if (this is SignedEvent) {
      final signedEvent = this as SignedEvent;
      return bip340.verify(signedEvent.pubkey, signedEvent.id, signedEvent.sig);
    }
    return false;
  }

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
