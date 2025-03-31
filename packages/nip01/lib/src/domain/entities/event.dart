// ignore_for_file: invalid_annotation_target

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
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Event.signed({
    required String id,
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
    required String sig,
  }) = SignedEvent;
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Event.unsigned({
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
  }) = UnsignedEvent;
  const Event._();

  SignedEvent sign(KeyPair keyPair) {
    if (keyPair.publicKey != pubkey) {
      throw EventSigningException(
        'Keypair can nog sign event for pubkey: $pubkey',
      );
    }

    final signature = keyPair.sign(id);

    return Event.signed(
      id: id,
      pubkey: pubkey,
      createdAt: createdAt,
      kind: kind,
      tags: tags,
      content: content,
      sig: signature,
    ) as SignedEvent;
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

class EventSigningException implements Exception {
  final String message;

  EventSigningException(this.message);
}
