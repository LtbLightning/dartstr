import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay.freezed.dart';

enum RelayStatus {
  connecting,
  connected,
  disconnecting,
  disconnected,
  disposing,
  disposed,
}

@freezed
sealed class Relay with _$Relay {
  factory Relay({
    required String url,
    required RelayStatus status,
    @Default('') String statusMessage,
  }) = _Relay;
  const Relay._();

  bool get isConnected => status == RelayStatus.connected;
  bool get isDisconnected => status == RelayStatus.disconnected;
  bool get isConnecting => status == RelayStatus.connecting;
  bool get isDisconnecting => status == RelayStatus.disconnecting;
  bool get isDisposing => status == RelayStatus.disposing;
  bool get isDisposed => status == RelayStatus.disposed;
}
