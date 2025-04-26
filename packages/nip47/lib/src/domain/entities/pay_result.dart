import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_result.freezed.dart';
part 'pay_result.g.dart';

@freezed
sealed class PayResult with _$PayResult {
  const factory PayResult({
    required String preimage,
    int? feesPaidSat,
  }) = _PayResult;
  const PayResult._();

  factory PayResult.fromJson(Map<String, dynamic> json) =>
      _$PayResultFromJson(json);
}
