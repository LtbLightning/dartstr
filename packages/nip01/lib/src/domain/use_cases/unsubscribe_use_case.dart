import 'package:nip01/src/domain/repositories/subscription_repository.dart';

class UnsubscribeUseCase {
  final SubscriptionRepository _subscriptionRepository;

  UnsubscribeUseCase({
    required SubscriptionRepository subscriptionRepository,
  }) : _subscriptionRepository = subscriptionRepository;

  Future<List<String>> execute(String subscriptionId,
      {required List<String> relayUrls}) async {
    try {
      final unsubscribedFromRelays = await _subscriptionRepository.unsubscribe(
        subscriptionId,
        relayUrls: relayUrls,
      );

      return unsubscribedFromRelays;
    } catch (e) {
      throw UnsubscribeException(e.toString());
    }
  }
}

class UnsubscribeException implements Exception {
  final String message;

  UnsubscribeException(this.message);

  @override
  String toString() {
    return '[UnsubscribeUseCase]: $message';
  }
}
