import 'package:freezed_annotation/freezed_annotation.dart';

part 'relay_state.freezed.dart';

@freezed
sealed class RelayState with _$RelayState {
  const factory RelayState.connecting({
    required String relayUrl,
  }) = ConnectingRelayState;

  const factory RelayState.connected({
    required String relayUrl,
  }) = ConnectedRelayState;

  const factory RelayState.disconnecting({
    required String relayUrl,
    String? reason,
  }) = DisconnectingRelayState;

  const factory RelayState.disconnected({
    required String relayUrl,
    String? reason,
  }) = DisconnectedRelayState;

  const factory RelayState.disposing({
    required String relayUrl,
  }) = DisposingRelayState;

  const factory RelayState.disposed({
    required String relayUrl,
  }) = DisposedRelayState;

  const RelayState._();
}
