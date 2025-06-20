import 'dart:async';

import 'package:async/src/stream_sink_transformer.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MockWebSocketChannel implements WebSocketChannel {
  final StreamController _controller = StreamController.broadcast();
  final StreamController _sinkController = StreamController.broadcast();
  bool _isClosed = false;

  @override
  Stream get stream => _controller.stream;

  @override
  WebSocketSink get sink => MockSink(_sinkController);

  @override
  Future<void> get ready async => Future.value();

  void addIncoming(String message) {
    _controller.add(message);
  }

  Future<void> close() async {
    _isClosed = true;
    await _controller.close();
    await _sinkController.close();
  }

  @override
  StreamChannel<S> cast<S>() {
    // TODO: implement cast
    throw UnimplementedError();
  }

  @override
  StreamChannel changeSink(StreamSink Function(StreamSink p1) change) {
    // TODO: implement changeSink
    throw UnimplementedError();
  }

  @override
  StreamChannel changeStream(Stream Function(Stream p1) change) {
    // TODO: implement changeStream
    throw UnimplementedError();
  }

  @override
  // TODO: implement closeCode
  int? get closeCode => throw UnimplementedError();

  @override
  // TODO: implement closeReason
  String? get closeReason => throw UnimplementedError();

  @override
  void pipe(StreamChannel other) {
    // TODO: implement pipe
  }

  @override
  // TODO: implement protocol
  String? get protocol => throw UnimplementedError();

  @override
  StreamChannel<S> transform<S>(
      StreamChannelTransformer<S, dynamic> transformer) {
    // TODO: implement transform
    throw UnimplementedError();
  }

  @override
  StreamChannel transformSink(StreamSinkTransformer transformer) {
    // TODO: implement transformSink
    throw UnimplementedError();
  }

  @override
  StreamChannel transformStream(StreamTransformer transformer) {
    // TODO: implement transformStream
    throw UnimplementedError();
  }
}

class MockSink implements WebSocketSink {
  final StreamController controller;
  MockSink(this.controller);

  @override
  void add(message) => controller.add(message);

  @override
  void addError(error, [StackTrace? stackTrace]) =>
      controller.addError(error, stackTrace);

  @override
  Future close([int? closeCode, String? closeReason]) => controller.close();

  @override
  Future addStream(Stream stream) {
    // TODO: implement addStream
    throw UnimplementedError();
  }

  @override
  // TODO: implement done
  Future get done => throw UnimplementedError();
}
