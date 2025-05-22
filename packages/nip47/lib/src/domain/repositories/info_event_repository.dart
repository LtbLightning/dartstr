import 'package:nip47/nip47.dart';

abstract class InfoEventRepository {
  Future<void> publish({
    required String walletServicePrivateKey,
    List<Method> methods = const [],
    List<NotificationType> notifications = const [],
    List<String> customMethods = const [],
    List<String> customNotifications = const [],
    required List<String> relays,
    String? clientPubkey,
    String? walletRelay,
  });
}
