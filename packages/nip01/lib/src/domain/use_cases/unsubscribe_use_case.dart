import 'package:nip01/src/domain/entities/subscription.dart';
import 'package:nip01/src/domain/repositories/subscription_repository.dart';

class UnsubscribeUseCase {
  final SubscriptionRepository _subscriptionRepository;

  UnsubscribeUseCase({
    required SubscriptionRepository subscriptionRepository,
  }) : _subscriptionRepository = subscriptionRepository;

  Future<List<String>> execute(Subscription subscription) async {
    try {
      final unsubscribedFromRelays = await _subscriptionRepository.unsubscribe(
        subscription.id,
        relayUrls: subscription.relayUrls,
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
