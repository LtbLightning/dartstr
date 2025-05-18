import 'dart:async';
import 'package:nip01/src/data/data_sources/relay_data_source.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/data/models/relay_state.dart';
import 'package:nip01/src/domain/entities/entities.dart';
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
          url: state.relayUrl,
          status: state.status,
          statusMessage: state.statusMessage ?? '',
        );
      });

  @override
  Stream<NoticeMessage> get noticeStream => _noticeBroadcaster.stream;

  @override
  Future<List<String>> addRelays(List<String> urls) async {
    final relays = (await Future.wait(urls.map((url) async {
      try {
        await _relayDataSource.connect(url.toString());
        return url.toString();
      } catch (e) {
        return null;
      }
    })))
        .whereType<String>()
        .toList();

    if (relays.isEmpty) {
      throw Exception('No relays added');
    }
    return relays;
  }

  @override
  Relay? getRelay(String url) {
    final state = _relayDataSource.getState(url);
    if (state == null) {
      return null;
    }
    return Relay(
      url: state.relayUrl,
      status: state.status,
      statusMessage: state.statusMessage ?? '',
    );
  }

  @override
  List<Relay> getRelays({bool? connected}) =>
      _relayDataSource.states.where((state) {
        if ((connected == true && state is! ConnectedRelayState) ||
            (connected == false && state is ConnectedRelayState)) {
          return false;
        }
        return true;
      }).map((state) {
        return Relay(
          url: state.relayUrl,
          status: state.status,
          statusMessage: state.statusMessage ?? '',
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
