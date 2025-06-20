import 'package:nip01/src/domain/entities/notice_message.dart';
import 'package:nip01/src/domain/entities/relay.dart';

abstract class RelayRepository {
  Stream<Relay> get relayStream;
  Stream<NoticeMessage> get noticeStream;
  Future<List<String>> addRelays(List<String> urls);
  Relay? getRelay(String url);
  List<Relay> getRelays({bool? connected});
  Future<void> removeRelay(String url);
}
