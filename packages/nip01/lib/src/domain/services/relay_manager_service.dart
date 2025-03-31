import 'package:nip01/src/domain/entities/entities.dart';

abstract class RelayManagerService {
  List<Relay> get relays;
  Stream<List<Relay>> get relaysStream;
  Stream<SignedEvent> get eventsStream;
  Future<List<Stream<Relay>>> addRelays(List<String> urls);
  void removeRelays(List<String> urls);
  Future<bool> publishEvent(
    SignedEvent event, {
    List<String>? relayUrls,
    int successTreshold = 1,
    int timeoutSec = 10,
  });
  Future<List<SignedEvent>> getStoredEvents(
    List<Filters> filters, {
    List<String>? relayUrls,
  });
  Future<Stream<Event>> subscribe(
    Subscription subscription, {
    List<String>? relayUrls,
    void Function(List<Event>)? onEose,
  });
  Future<void> unsubscribe(
    String subscriptionId, {
    List<String>? relayUrls,
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
  /*
  Future<void> setUserMetadata({
    required KeyPair userKeyPair,
    required Kind0Metadata metadata,
    List<String>? relayUrls,
    int successTreshold = 1,
    int timeoutSec = 5,
  });
  Future<Kind0Metadata> getUserMetadata(
    String userPubkey, {
    List<String>? relayUrls,
  });
  */
}
