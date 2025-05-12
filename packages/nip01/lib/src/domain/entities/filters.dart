import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';

@freezed
sealed class Filters with _$Filters {
  const factory Filters({
    List<String>? ids,
    List<String>? authors,
    List<int>? kinds,
    Map<String, List<String>>? tags,
    int? since,
    int? until,
    int? limit,
  }) = _Filters;
  const Filters._();
}
