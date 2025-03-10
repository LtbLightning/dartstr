import 'dart:async';
import 'dart:developer';

import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:synchronized/synchronized.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

abstract class WebSocketDataSource {
  Stream<RelayMessageModel> get messages;
  Stream<WebSocketState> get states;
  WebSocketState get state;
  String get url;
  Future<void> get ready;
  void sendMessage(ClientMessageModel message);
  Future<void> dispose();
}

enum WebSocketState {
  connecting,
  connected,
  disconnecting,
  disconnected,
  disposing,
  disposed,
}

class WebSocketDataSourceImpl implements WebSocketDataSource {
  final String _url;
  final Duration _backoffDuration = Duration(seconds: 2);
  final StreamController<WebSocketState> _stateBroadcast;
  final StreamController<RelayMessageModel> _messageBroadcast;
  WebSocketState _state;
  WebSocketChannel? _channel;
  StreamSubscription? _subscription;
  // Lock to ensure connecting, disconnecting, and disposing are not executed concurrently
  final Lock _lock;

  WebSocketDataSourceImpl({required String url})
      : _url = url,
        _stateBroadcast = StreamController<WebSocketState>.broadcast(),
        _messageBroadcast = StreamController<RelayMessageModel>.broadcast(),
        _state = WebSocketState.disconnected,
        _lock = Lock() {
    _ensureConnection();
  }

  @override
  Stream<RelayMessageModel> get messages =>
      _messageBroadcast.stream.asBroadcastStream();

  @override
  Stream<WebSocketState> get states =>
      _stateBroadcast.stream.asBroadcastStream();

  @override
  WebSocketState get state => _state;

  @override
  String get url => _url;

  @override
  Future<void> get ready async {
    if (_channel == null) {
      throw WebSocketConnectionException('WebSocket is not connected');
    }

    await _channel!.ready;
  }

  @override
  void sendMessage(ClientMessageModel message) {
    if (_channel == null) {
      throw WebSocketConnectionException('WebSocket is not connected');
    }

    final data = message.data;
    log('Sending message: $data to relay $_url');
    _channel!.sink.add(data);
  }

  @override
  Future<void> dispose() async {
    await _lock.synchronized(() async {
      _changeState(WebSocketState.disposing);

      await _disconnect();
      await _messageBroadcast.close();
      _changeState(WebSocketState.disposed);

      await _stateBroadcast.close();
    });
  }

  Future<void> _ensureConnection() async {
    while (_state != WebSocketState.disposing &&
        _state != WebSocketState.disposed) {
      // Check if a reconnection is needed
      if (_channel == null) {
        // Not connected, so connect
        await _connect();
      } else {
        try {
          await _channel!.ready;
          // Channel is ready, so do nothing
        } catch (e) {
          // A connection over the current channel was not possible,
          //  disconnect from it.
          await _disconnect();
        }
      }

      // Don't wait for the backoff time to stop the loop
      if (_state == WebSocketState.disposing ||
          _state == WebSocketState.disposed) {
        break;
      }

      await Future.delayed(_backoffDuration);
    }
  }

  Future<void> _connect() async {
    await _lock.synchronized(() {
      _changeState(WebSocketState.connecting);

      _channel = WebSocketChannel.connect(Uri.parse(url));

      _subscription = _channel!.stream.listen(
        (message) {
          log('Received message: $message from relay $_url');
          final relayMessage = RelayMessageModel.fromString(message);
          _messageBroadcast.add(relayMessage);
        },
        onError: (error) async {
          await _disconnect();
        },
        onDone: () async {
          await _disconnect();
        },
      );

      _changeState(WebSocketState.connected);
    });
  }

  Future<void> _disconnect() async {
    await _lock.synchronized(() async {
      _changeState(WebSocketState.disconnecting);

      await _subscription?.cancel();
      await _channel?.sink.close(status.goingAway);
      _channel = null;
      _subscription = null;

      _changeState(WebSocketState.disconnected);
    });
  }

  void _changeState(WebSocketState newState) {
    if (_state == newState ||
        _state == WebSocketState.disposing &&
            newState != WebSocketState.disposed ||
        _state == WebSocketState.disposed) {
      return;
    }

    _state = newState;
    _stateBroadcast.add(_state);
  }
}

class WebSocketConnectionException implements Exception {
  final String message;

  WebSocketConnectionException(this.message);
}
