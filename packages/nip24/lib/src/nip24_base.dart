import 'dart:convert';

import 'package:nip01/nip01.dart';

class Kind0ExtraMetadata {
  final Kind0Metadata kind0metadata;
  final String? displayName;
  final String? website;
  final String? banner;
  final bool bot;

  Kind0ExtraMetadata({
    required String name,
    String? about,
    String? picture,
    this.displayName,
    this.website,
    this.banner,
    this.bot = false,
  }) : kind0metadata = Kind0Metadata(
          name: name,
          about: about,
          picture: picture,
        );

  factory Kind0ExtraMetadata.fromContent(String content) {
    final metadata = jsonDecode(content);

    return Kind0ExtraMetadata(
      name: metadata['name'],
      about: metadata['about'],
      picture: metadata['picture'],
      displayName: metadata['display_name'],
      website: metadata['website'],
      banner: metadata['banner'],
      bot: metadata['bot'] ?? false,
    );
  }

  String get content {
    final metadata = {
      'name': kind0metadata.name,
      'about': kind0metadata.about,
      'picture': kind0metadata.picture,
      'display_name': displayName,
      'website': website,
      'banner': banner,
      'bot': bot,
    };

    return jsonEncode(metadata);
  }

  String get name => kind0metadata.name;
  String? get about => kind0metadata.about;
  String? get picture => kind0metadata.picture;
}
