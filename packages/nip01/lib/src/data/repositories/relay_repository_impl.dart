import 'dart:async';
import 'package:nip01/src/data/data_sources/relay_data_source.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/data/models/relay_state.dart';
import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/entities/notice_message.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';

class RelayRepositoryImpl implements RelayRepository {
  final RelayDataSource _relayDataSource;
  final StreamController<NoticeMessage> _noticeBroadcaster;

  RelayRepositoryImpl({required RelayDataSource relayDataSource})
      : _relayDataSource = relayDataSource,
        _noticeBroadcaster = StreamController<NoticeMessage>.broadcast() {
    _relayDataSource.messageStream.listen((message) {
      if (message is RelayNoticeMessageModel) {
        _handleNoticeMessage(message);
      }
    });
  }

  @override
  Stream<Relay> get relayStream => _relayDataSource.stateStream.map((state) {
        return Relay(
            url: state.relayUrl, isConnected: state is ConnectedRelayState);
      });

  @override
  Stream<NoticeMessage> get noticeStream => _noticeBroadcaster.stream;

  @override
  Future<void> addRelay(String url) async {
    await _relayDataSource.connect(url);
  }

  @override
  Relay? getRelay(String url) {
    final state = _relayDataSource.getState(url);
    if (state == null) {
      return null;
    }
    return Relay(
      url: state.relayUrl,
      isConnected: state is ConnectedRelayState,
    );
  }

  @override
  List<Relay> get relays => _relayDataSource.states.map((state) {
        return Relay(
          url: state.relayUrl,
          isConnected: state is ConnectedRelayState,
        );
      }).toList();

  @override
  Future<void> removeRelay(String url) async {
    await _relayDataSource.dispose(url);
  }

  void _handleNoticeMessage(RelayNoticeMessageModel message) {
    // Handle the notice message
    // For example, you can log it or notify the user
    print(
        '[RelayRepositoryImpl] Received notice from ${message.relayUrl}: ${message.message}');
    final noticeMessage = NoticeMessage(
      relayUrl: message.relayUrl,
      message: message.message,
    );
    _noticeBroadcaster.add(noticeMessage);
  }
}
