import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip01/nip01.dart';

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

  RelayStatus get status {
    return switch (this) {
      ConnectingRelayState() => RelayStatus.connecting,
      ConnectedRelayState() => RelayStatus.connected,
      DisconnectingRelayState() => RelayStatus.disconnecting,
      DisconnectedRelayState() => RelayStatus.disconnected,
      DisposingRelayState() => RelayStatus.disposing,
      DisposedRelayState() => RelayStatus.disposed,
    };
  }

  String? get statusMessage {
    switch (this) {
      case DisconnectingRelayState state:
        return state.reason;
      case DisconnectedRelayState state:
        return state.reason;
      case _:
        return null;
    }
    ;
  }
}
