import 'package:freezed_annotation/freezed_annotation.dart';

part 'tlv_record.freezed.dart';
part 'tlv_record.g.dart';

@freezed
sealed class TlvRecord with _$TlvRecord {
  const factory TlvRecord({
    required int type,
    required String value,
  }) = _TlvRecord;
  const TlvRecord._();

  factory TlvRecord.fromJson(Map<String, dynamic> json) =>
      _$TlvRecordFromJson(json);
}
