import 'package:dartstr_utils/dartstr_utils.dart';
import 'package:nip01/src/domain/repositories/repositories.dart';
import 'package:nip01/src/domain/entities/entities.dart';

class SubscribeUseCase {
  final SubscriptionRepository _subscriptionRepository;
  final EventRepository _eventRepository;
  final RelayRepository _relayRepository;

  SubscribeUseCase({
    required SubscriptionRepository subscriptionRepository,
    required EventRepository eventRepository,
    required RelayRepository relayRepository,
  })  : _subscriptionRepository = subscriptionRepository,
        _eventRepository = eventRepository,
        _relayRepository = relayRepository;

  Future<({Subscription subscription, Stream<EventMessage> eventStream})>
      execute({
    required List<Filters> filters,
    List<String>? relayUrls,
  }) async {
    try {
      final relays = relayUrls?.map((url) => url.toString()).toList();
      if (relays != null) {
        await _relayRepository.addRelays(relays);
      }

      final subscriptionId = SecretGenerator.secretHex(64);
      final subscription = await _subscriptionRepository.subscribe(
        subscriptionId: subscriptionId,
        filters: filters,
        relayUrls: relayUrls,
      );

      // Listen to the events for this subscription
      final eventStream = _eventRepository.eventStream.where((event) {
        // Check if the event is coming from the relays we want to listen to
        if (relayUrls != null && !relayUrls.contains(event.relayUrl)) {
          return false;
        }
        // Check if the event is from the subscription we want to listen to
        if (event.subscriptionId != subscriptionId) {
          return false;
        }

        return true;
      });

      return (subscription: subscription, eventStream: eventStream);
    } catch (e) {
      throw SubscribeException(e.toString());
    }
  }
}

class SubscribeException implements Exception {
  final String message;

  SubscribeException(this.message);

  @override
  String toString() {
    return '[SubscribeUseCase]: $message';
  }
}
