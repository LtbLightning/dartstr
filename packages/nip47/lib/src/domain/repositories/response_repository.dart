import 'package:nip47/nip47.dart';

abstract class ResponseRepository {
  Stream<ResponseEvent> get responseStream;
  Future<ResponseEvent> sendResponse({
    required Response response,
    required String walletServicePrivateKey,
    bool waitForOkMessage = true,
  });
  Future<List<ResponseEvent>> getResponses();
  Future<ResponseEvent?> getResponseByRequestId({required String requestId});
  Future<void> removeResponses({
    required String clientPubkey,
  });
}
