import 'package:nip01/src/domain/entities/event.dart';
import 'package:nip01/src/domain/entities/filters.dart';
import 'package:nip01/src/domain/entities/relay.dart';
import 'package:nip01/src/domain/entities/subscription.dart';

abstract class RelayRepository {
  Stream<Relay> get relay;
  String get url;
  bool get isConnected;
  bool get isDisposed;
  Future<bool> publishEvent(
    Event event, {
    int timeoutSec = 10,
  });
  Future<Stream<Event>> requestEvents(
    String subscriptionId,
    List<Filters> filters, {
    void Function(List<Event>)? onEose,
  });
  Future<List<Event>> requestStoredEvents(
    List<Filters> filters,
  );
  Future<Subscription?> closeSubscription(
    String subscriptionId, {
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
  Future<void> dispose({
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  });
}
