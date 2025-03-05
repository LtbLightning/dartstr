import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/key_pair.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  @override
  final String? _id;
  @override
  final String pubkey;
  @override
  final int createdAt;
  @override
  final int kind;
  @override
  final List<List<String>> tags;
  @override
  final String content;
  @override
  final String? sig;

  const Event({
    String? id,
    required this.pubkey,
    required this.createdAt,
    required this.kind,
    this.tags = const [],
    required this.content,
    this.sig,
  }) : _id = id;

  factory Event.sign(Event event, {required KeyPair keyPair}) {
    if (keyPair.publicKey != event.pubkey) {
      throw ArgumentError(
        'Invalid keypair to sign event with pubkey: ${event.pubkey}',
      );
    }

    final signature = keyPair.sign(event.id);

    return event.copyWith(sig: signature);
  }

  String get id {
    if (_id != null) {
      return _id;
    }

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
}
