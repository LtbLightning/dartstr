import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/kind_0_metadata.dart';

part 'kind_0_content_model.freezed.dart';

@freezed
sealed class Kind0ContentModel with _$Kind0ContentModel {
  const factory Kind0ContentModel({
    required String content,
  }) = _Kind0ContentModel;
  const Kind0ContentModel._();

  factory Kind0ContentModel.fromKind0Metadata(Kind0Metadata metadata) {
    final content = jsonEncode(metadata.toJson());
    return Kind0ContentModel(content: content);
  }

  Kind0Metadata toKind0Metadata() {
    final metadata = jsonDecode(content);

    return Kind0Metadata(
      name: metadata['name'],
      about: metadata['about'],
      picture: metadata['picture'],
    );
  }
}
