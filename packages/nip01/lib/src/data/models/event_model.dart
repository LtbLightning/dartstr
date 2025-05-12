import 'package:bip340/bip340.dart' as bip340;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
sealed class EventModel with _$EventModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory EventModel({
    required String id,
    required String pubkey,
    required int createdAt,
    required int kind,
    @Default([]) List<List<String>> tags,
    required String content,
    required String sig,
  }) = _EventModel;
  const EventModel._();

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  factory EventModel.fromEvent(Event event) {
    return EventModel(
      id: event.id,
      pubkey: event.pubkey,
      createdAt: event.createdAt,
      kind: event.kind,
      tags: event.tags,
      content: event.content,
      sig: event.sig,
    );
  }

  Event toEvent() {
    return Event(
      id: id,
      pubkey: pubkey,
      createdAt: createdAt,
      kind: kind,
      tags: tags,
      content: content,
      sig: sig,
    );
  }

  bool get isValid => bip340.verify(pubkey, id, sig);
}
