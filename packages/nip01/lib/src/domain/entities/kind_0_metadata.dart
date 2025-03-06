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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'about': about,
      'picture': picture,
    };
  }
}
