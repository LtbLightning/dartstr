import 'package:nip01/src/domain/entities/relay.dart';

abstract class RelayManagerService {
  List<Relay> get relays;
  Stream<List<Relay>> get relaysStream;
  /*
  List<Relay> addRelays(List<String> url);
  void removeRelays(List<String> url);

  Future<bool> publishEvent(
    Event event, {
    int successTreshold = 1,
    List<String>? relayUrls,
  });
  Future<List<Event>> getStoredEvents(
    List<Filters> filters, {
    List<String>? relayUrls,
  });
  Future<Stream<Event>> subscribeToEvents(
    String subscriptionId,
    List<Filters> filters, {
    List<String>? relayUrls,
    void Function(List<Event>)? onEose,
  });
  Future<void> unsubscribeFromEvents(
    String subscriptionId, {
    List<String>? relayUrls,
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
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
  Future<void> disposeRelayClient(
    String relayUrl, {
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
  Future<void> disposeAllRelayClients({
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
  */
}
