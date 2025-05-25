import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tlv_record.freezed.dart';

@freezed
sealed class TlvRecord with _$TlvRecord {
  const factory TlvRecord({
    required int type,
    required String value,
  }) = _TlvRecord;
  const TlvRecord._();
}
