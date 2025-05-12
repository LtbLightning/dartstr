import 'package:nip01/nip01.dart';

abstract class SubscriptionRepository {
  List<Subscription> get subscriptions;
  Stream<ClosedMessage> get closedStream;
  List<Subscription> getSubscriptionsByRelay(String relayUrl);
  Future<Subscription> subscribe({
    required String subscriptionId,
    required List<Filters> filters,
    List<String>? relayUrls,
  });
  Future<void> unsubscribe(
    String subscriptionId, {
    List<String>? relayUrls,
  });
}
