import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kind_0_metadata.freezed.dart';

@freezed
sealed class Kind0Metadata with _$Kind0Metadata {
  const factory Kind0Metadata({
    required String name,
    String? about,
    String? picture,
  }) = _Kind0Metadata;
  const Kind0Metadata._();

  factory Kind0Metadata.fromContent(String content) {
    final metadata = jsonDecode(content);

    return Kind0Metadata(
      name: metadata['name'],
      about: metadata['about'],
      picture: metadata['picture'],
    );
  }

  String get content => jsonEncode({
        'name': name,
        'about': about,
        'picture': picture,
      });
}
