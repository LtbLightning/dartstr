abstract class InfoEventRepository {
  Future<void> publish({
    required String walletServicePrivateKey,
    required List<String> methods,
    required List<String> relays,
    List<String>? notifications,
    String? clientPubkey,
    String? walletRelay,
  });
}
