import 'dart:async';
import 'dart:developer';

import 'package:nip01/src/data/data_sources/web_socket_data_source.dart';
import 'package:nip01/src/data/models/client_message.dart';
import 'package:nip01/src/data/models/relay_message.dart';
import 'package:nip01/src/domain/entities/event.dart';
import 'package:nip01/src/domain/entities/relay.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';

class RelayRepositoryImpl implements RelayRepository {
  final WebSocketDataSource _dataSource;

  RelayRepositoryImpl(this._dataSource);

  @override
  Stream<Relay> get relay => _dataSource.states.map((state) {
        return Relay(
          url: _dataSource.url,
          isConnected: state == WebSocketState.connected,
          isDisposed: state == WebSocketState.disposed,
        );
      });

  @override
  String get url => _dataSource.url;

  @override
  bool get isConnected => _dataSource.state == WebSocketState.connected;

  @override
  bool get isDisposed => _dataSource.state == WebSocketState.disposed;

  @override
  Future<bool> publishEvent(
    Event event, {
    int timeoutSec = 10,
  }) async {
    log('Publishing event: $event to relay ${_dataSource.url}');
    final message = ClientEventMessage(event: event);
    final completer = Completer<bool>();

    final subscription = _dataSource.messages.listen((message) {
      log('Received message: $message');
      if (message is RelayOkMessage && message.eventId == event.id) {
        if (!completer.isCompleted) {
          completer.complete(true); // Successfully received acknowledgment
        }
      }
    });

    try {
      _dataSource.sendMessage(message);

      // Use Future.any to complete as soon as one of the futures completes
      final result = await Future.any([
        completer.future, // Completes if Ok is received
        Future.delayed(Duration(seconds: timeoutSec),
            () => false), // Completes if timeout occurs
      ]);

      return result;
    } catch (e) {
      log('Error publishing event: $e');
      return false;
    } finally {
      await subscription.cancel(); // Clean up listener
      if (!completer.isCompleted) {
        // Complete completer to avoid memory leak
        completer.complete(false);
      }
    }
  }
}
