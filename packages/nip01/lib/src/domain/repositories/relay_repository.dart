import 'package:nip01/src/domain/entities/notice_message.dart';
import 'package:nip01/src/domain/entities/relay.dart';

abstract class RelayRepository {
  Stream<Relay> get relayStream;
  Stream<NoticeMessage> get noticeStream;
  Future<void> addRelay(String url);
  Relay? getRelay(String url);
  List<Relay> get relays;
  Future<void> removeRelay(String url);
}
