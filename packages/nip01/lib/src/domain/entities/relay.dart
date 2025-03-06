import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay.freezed.dart';

@freezed
sealed class Relay with _$Relay {
  factory Relay({
    required String url,
    @Default(false) bool isConnected,
  }) = _Relay;
  const Relay._();
}
