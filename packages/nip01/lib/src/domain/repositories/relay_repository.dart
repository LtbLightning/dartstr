import 'package:nip01/src/domain/entities/event.dart';
import 'package:nip01/src/domain/entities/filters.dart';
import 'package:nip01/src/domain/entities/relay.dart';
import 'package:nip01/src/domain/entities/subscription.dart';

abstract class RelayRepository {
  Stream<Relay> get relayStream;
  Stream<SignedEvent> get eventStream;
  Relay get relay;
  String get url;
  bool get isConnected;
  bool get isDisposed;
  Future<bool> publishEvent(
    SignedEvent event, {
    int timeoutSec = 10,
  });
  Stream<SignedEvent> subscribe(
    Subscription subscription, {
    void Function(List<Event>)? onEose,
  });
  Future<List<SignedEvent>> getStoredEvents(
    List<Filters> filters,
  );
  Future<void> closeSubscription(
    String subscriptionId, {
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
  Future<void> dispose({
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
}
