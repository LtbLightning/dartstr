import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/src/domain/entities/filters.dart';

part 'subscription.freezed.dart';

@freezed
sealed class Subscription with _$Subscription {
  const factory Subscription({
    required String id,
    List<Filters>? filters,
  }) = _Subscription;
  const Subscription._();
}
