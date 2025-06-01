import 'package:nip47/nip47.dart';

abstract class InfoEventRepository {
  Future<void> publish(
    InfoEvent infoEvent, {
    required String walletServicePrivateKey,
    required List<String> relays,
  });
}
