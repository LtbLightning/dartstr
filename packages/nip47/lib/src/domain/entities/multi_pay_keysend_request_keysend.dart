import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/nip47.dart';

part 'multi_pay_keysend_request_keysend.freezed.dart';
part 'multi_pay_keysend_request_keysend.g.dart';

@freezed
sealed class MultiPayKeysendRequestKeysend
    with _$MultiPayKeysendRequestKeysend {
  const factory MultiPayKeysendRequestKeysend({
    String? id,
    required String pubkey,
    required BigInt amountSat,
    String? preimage,
    List<TlvRecord>? tlvRecords,
  }) = _MultiPayKeysendRequestKeysend;
  const MultiPayKeysendRequestKeysend._();

  factory MultiPayKeysendRequestKeysend.fromJson(Map<String, dynamic> json) =>
      _$MultiPayKeysendRequestKeysendFromJson(json);
}
