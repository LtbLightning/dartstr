// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/key_pair.dart';

part 'event.freezed.dart';

@freezed
sealed class Event with _$Event {
  const factory Event({
    required String id,
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
    required String sig,
  }) = _Event;
  const Event._();

  factory Event.create({
    required KeyPair keyPair,
    required int createdAt,
    required int kind,
    List<List<String>>? tags,
    required String content,
  }) {
    final pubkey = keyPair.publicKey;
    final id = calculateId(
      pubkey: pubkey,
      createdAt: createdAt,
      kind: kind,
      tags: tags,
      content: content,
    );
    final signature = keyPair.sign(id);

    return Event(
      id: id,
      pubkey: pubkey,
      createdAt: createdAt,
      kind: kind,
      tags: tags ?? [],
      content: content,
      sig: signature,
    );
  }

  static String calculateId({
    required String pubkey,
    required int createdAt,
    required int kind,
    List<List<String>>? tags,
    required String content,
  }) {
    final data = [
      0,
      pubkey,
      createdAt,
      kind,
      tags ?? [],
      content,
    ];

    final jsonString = jsonEncode(data);
    final bytes = utf8.encode(jsonString);
    final digest = sha256.convert(bytes);
    final id = hex.encode(digest.bytes);
    return id;
  }
}
