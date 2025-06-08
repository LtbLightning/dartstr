import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';

abstract class RequestRepository {
  Stream<RequestEvent> get requestStream;
  Future<void> subscribeToRequests({
    required String clientPubkey,
    required nip01.KeyPair walletServiceKeyPair,
    List<String>? relayUrls,
  });
  Future<void> unsubscribeFromRequests({
    required String clientPubkey,
  });
  Future<List<RequestEvent>> getRequests();
  Future<void> removeRequests({
    required String clientPubkey,
  });
}
