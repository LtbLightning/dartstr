import 'dart:async';

import 'package:nip01/src/data/data_sources/relay_data_source.dart';
import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/data/models/relay_state.dart';
import 'package:test/test.dart';

import 'mocks/web_socket_channel_mock.dart';

void main() {
  group('WebSocketRelayDataSource', () {
    late WebSocketRelayDataSource dataSource;
    late MockWebSocketChannel fakeChannel;

    const relayUrl = 'wss://relay.test';

    setUp(() {
      fakeChannel = MockWebSocketChannel();
      dataSource = WebSocketRelayDataSource();
      dataSource.channelFactory = (_) => fakeChannel;
    });

    test('connect emits ConnectedRelayState', () async {
      final completer = Completer<RelayState>();

      dataSource.stateStream.listen((state) {
        if (state is ConnectedRelayState && state.relayUrl == relayUrl) {
          if (!completer.isCompleted) completer.complete(state);
        }
      });

      await dataSource.connect(relayUrl);

      final result = await Future.any([
        completer.future,
        Future.delayed(const Duration(seconds: 2), () => null),
      ]);

      expect(result, isA<ConnectedRelayState>());
    });

    test('sendMessage sends to sink', () async {
      final sent = <dynamic>[];
      (fakeChannel.sink as MockSink).controller.stream.listen(sent.add);

      await dataSource.connect(relayUrl);
      final message = ClientMessageModel(data: 'hi');
      dataSource.sendMessage(message);

      await Future.delayed(Duration.zero); // allow async flush
      expect(sent, contains('hi'));
    });

    test('receives and parses incoming message', () async {
      final messages = <RelayMessageModel>[];
      dataSource.messageStream.listen(messages.add);

      await dataSource.connect(relayUrl);
      fakeChannel.addIncoming('["NOTICE", "hello from relay"]');

      await Future.delayed(Duration.zero);
      expect(messages.first, isA<RelayNoticeMessageModel>());
    });
  });
}
