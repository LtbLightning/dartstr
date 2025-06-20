import 'dart:async';
import 'dart:developer';

import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/data/models/relay_state.dart';
import 'package:synchronized/synchronized.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class RelayDataSource {
  Stream<RelayMessageModel> get messageStream;
  Stream<RelayState> get stateStream;
  List<String> get relayUrls;
  RelayState? getState(String relayUrl);
  List<RelayState> get states;
  Future<void> connect(String relayUrl);
  Future<List<String>> sendMessage(
    ClientMessageModel message, {
    List<String>? relayUrls,
  });
  Future<void> dispose(String relayUrl);
}

class WebSocketRelayDataSource implements RelayDataSource {
  final StreamController<RelayState> _stateBroadcast;
  final StreamController<RelayMessageModel> _messageBroadcast;
  final Map<String, Lock> _locks = {};
  final Map<String, RelayState> _states = {};
  final Map<String, WebSocketChannel> _channels = {};
  final Map<String, StreamSubscription> _subscriptions = {};
  final Map<String, int> _retryCounts = {};
  final Duration _baseBackoffDuration;
  final int _maxRetries;
  // Optional factory for creating WebSocketChannel instances
  // This allows for easier testing and mocking of the WebSocket connection
  //  by providing a custom implementation of WebSocketChannel.
  WebSocketChannel Function(String url)? channelFactory;

  WebSocketRelayDataSource({
    Duration baseBackoffDuration = const Duration(seconds: 1),
    int maxRetries = 5,
  })  : _baseBackoffDuration = baseBackoffDuration,
        _maxRetries = maxRetries,
        _stateBroadcast = StreamController<RelayState>.broadcast(),
        _messageBroadcast = StreamController<RelayMessageModel>.broadcast() {
    _stateBroadcast.stream.listen((state) async {
      switch (state) {
        case ConnectingRelayState _:
          log('[WebSocketRelayDataSource] Connecting to relay: ${state.relayUrl}');
        case ConnectedRelayState _:
          log('[WebSocketRelayDataSource] Connected to relay: ${state.relayUrl}');
          // Attempt to reconnect automatically after disconnection
          final lock = _locks[state.relayUrl];
          if (lock == null) {
            log('[WebSocketRelayDataSource] Relay ${state.relayUrl} not found to reconnect');
            return;
          }

          await lock.synchronized(() async {
            // Reset retry count on a successful connection
            _retryCounts[state.relayUrl] = 0;
          });
        case DisconnectingRelayState _:
          log('[WebSocketRelayDataSource] Disconnecting from relay: ${state.relayUrl}');
        case DisconnectedRelayState _:
          log('[WebSocketRelayDataSource] Disconnected from relay: ${state.relayUrl}');
          // Attempt to reconnect automatically after disconnection
          final lock = _locks[state.relayUrl];
          if (lock == null) {
            log('[WebSocketRelayDataSource] Relay ${state.relayUrl} not found to reconnect');
            return;
          }

          await lock.synchronized(() async {
            await _reconnect(state.relayUrl);
          });
        case DisposingRelayState _:
          log('[WebSocketRelayDataSource] Disposing relay: ${state.relayUrl}');
        case DisposedRelayState _:
          log('[WebSocketRelayDataSource] Disposed relay: ${state.relayUrl}');
      }
    });
  }

  @override
  Stream<RelayMessageModel> get messageStream => _messageBroadcast.stream;

  @override
  Stream<RelayState> get stateStream => _stateBroadcast.stream;

  @override
  List<String> get relayUrls => _states.keys.toList();

  @override
  RelayState? getState(String relayUrl) => _states[relayUrl];

  @override
  List<RelayState> get states => _states.values.toList();

  @override
  Future<void> connect(String relayUrl) async {
    final lock = _locks.putIfAbsent(relayUrl, () => Lock());
    await lock.synchronized(() async {
      await _connect(relayUrl);
    });
  }

  @override
  Future<List<String>> sendMessage(
    ClientMessageModel message, {
    List<String>? relayUrls,
  }) async {
    final data = message.data;
    final sentTo = <String>[];
    final urls = relayUrls ?? _channels.keys;

    for (final url in urls) {
      final channel = _channels[url];
      if (channel != null) {
        await channel.ready;
        channel.sink.add(data);
        sentTo.add(url);
        log('[WebSocketRelayDataSource] Sent message: $data to relay $url');
      } else {
        log('[WebSocketRelayDataSource] Failed to send message to $url: no web socket channel available');
      }
    }

    return sentTo;
  }

  @override
  Future<void> dispose(String relayUrl) async {
    final lock = _locks[relayUrl];
    if (lock == null) {
      log('[WebSocketRelayDataSource] Relay $relayUrl not found to dispose');
      return;
    }

    await lock.synchronized(() async {
      _changeState(DisposingRelayState(relayUrl: relayUrl));

      _retryCounts.remove(relayUrl);
      await _disconnect(relayUrl);

      _changeState(DisposedRelayState(relayUrl: relayUrl));
    });
  }

  Future<void> _connect(String relayUrl) async {
    final existingState = _states[relayUrl];
    if (existingState != null) {
      if (existingState is ConnectedRelayState) {
        log('[WebSocketRelayDataSource] Relay $relayUrl is already connected');
        return;
      } else {
        log('[WebSocketRelayDataSource] Relay $relayUrl is already in ${existingState.status} state');
        // Disconnect the existing connection before reconnecting so we
        // are in a clean state
        await _disconnect(relayUrl);
      }
    }

    _changeState(ConnectingRelayState(relayUrl: relayUrl));

    try {
      final channel = channelFactory?.call(relayUrl) ??
          WebSocketChannel.connect(Uri.parse(relayUrl));
      _channels[relayUrl] = channel;

      _subscriptions[relayUrl] = channel.stream.listen(
        (message) {
          log('[WebSocketRelayDataSource] Received message: $message from relay $relayUrl');
          final relayMessage =
              RelayMessageModel.fromString(message, relayUrl: relayUrl);
          _messageBroadcast.add(relayMessage);
        },
        onError: (Object error) async {
          final lock = _locks[relayUrl];
          if (lock == null) {
            log('[WebSocketRelayDataSource] Relay $relayUrl not found to dispose');
            return;
          }

          await lock.synchronized(() async {
            _disconnect(relayUrl, reason: error.toString());
          });
        },
        onDone: () async {
          final lock = _locks[relayUrl];
          if (lock == null) {
            log('[WebSocketRelayDataSource] Relay $relayUrl not found to dispose');
            return;
          }

          await lock.synchronized(() async {
            _disconnect(relayUrl);
          });
        },
      );

      // Make sure the channel is really connected before proceeding
      await channel.ready;

      _changeState(ConnectedRelayState(relayUrl: relayUrl));
    } catch (e) {
      log('[WebSocketRelayDataSource] Failed to add relay $relayUrl: $e');
      throw RelayDataSourceConnectException('$e');
    }
  }

  Future<void> _disconnect(String relayUrl, {String? reason}) async {
    _changeState(DisconnectingRelayState(relayUrl: relayUrl, reason: reason));

    final channel = _channels.remove(relayUrl);
    final subscription = _subscriptions.remove(relayUrl);

    await subscription?.cancel();
    await channel?.sink.close(status.normalClosure);

    _changeState(DisconnectedRelayState(relayUrl: relayUrl, reason: reason));
  }

  void _changeState(RelayState newState) {
    final oldState = _states[newState.relayUrl];
    // If the state is the same, do nothing.
    // State shouldn't change anymore after it is disposed either.
    // Neither if it is not disposed yet, but disposing already.
    // Having DisposedRelayState before DisposingRelayState
    //  prevents the state from being changed to DisposingRelayState after
    //  DisposedRelayState.
    if (oldState == newState ||
        oldState is DisposedRelayState ||
        oldState is DisposingRelayState) {
      return;
    }

    _states[newState.relayUrl] = newState;
    _stateBroadcast.add(newState);
  }

  Future<void> _reconnect(String relayUrl) async {
    final retryCount = _retryCounts[relayUrl] ?? 0;

    if (retryCount >= _maxRetries) {
      log('[WebSocketRelayDataSource] Max retries reached for $relayUrl, giving up');
      return;
    }

    final delay = _getBackoffDelay(retryCount);
    log('[WebSocketRelayDataSource] Retry #$retryCount to $relayUrl in ${delay.inSeconds}s');

    await Future.delayed(delay);

    _retryCounts[relayUrl] = retryCount + 1;

    // Try to reconnect
    try {
      await _connect(relayUrl);
      log('[WebSocketRelayDataSource] Reconnected to $relayUrl');
    } catch (e) {
      log('[WebSocketRelayDataSource] Failed to reconnect to $relayUrl: $e');
      // If the connection fails, we will retry again
      await _disconnect(relayUrl);
    }
  }

  Duration _getBackoffDelay(int retryCount) {
    // Exponential: 1s, 2s, 4s, 8s...
    return _baseBackoffDuration * (1 << retryCount);
  }
}

class RelayDataSourceConnectException implements Exception {
  final String message;

  RelayDataSourceConnectException(this.message);
}
