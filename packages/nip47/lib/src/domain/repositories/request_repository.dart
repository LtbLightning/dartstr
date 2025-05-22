import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/nip47.dart';

abstract class RequestRepository {
  Stream<Request> get requestStream;
  Future<void> subscribeToRequests({
    required String clientPubkey,
    required nip01.KeyPair walletServiceKeyPair,
    List<String>? relayUrls,
  });
  Future<List<Request>> getRequests();
  Future<void> removeRequests({
    required String clientPubkey,
  });
}
