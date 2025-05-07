import 'dart:async';

import 'package:async/async.dart';
import 'package:nip01/src/data/data_sources/web_socket_data_source.dart';
import 'package:nip01/src/data/repositories/relay_repository_impl.dart';
import 'package:nip01/src/domain/entities/entities.dart';
import 'package:nip01/src/domain/repositories/relay_repository.dart';
import 'package:nip01/src/domain/services/relay_manager_service.dart';

class RelayManagerServiceImpl implements RelayManagerService {
  final Map<String, RelayRepository> _relays;
  late final StreamController<List<Relay>> _relaysStreamController;
  late final StreamController<SignedEvent> _eventsStreamController;
  StreamSubscription<List<Relay>>? _relaysStreamSubscription;
  StreamSubscription<SignedEvent>? _eventsStreamSubscription;

  RelayManagerServiceImpl()
      : _relays = {},
        _relaysStreamController = StreamController<List<Relay>>.broadcast(),
        _eventsStreamController = StreamController<SignedEvent>.broadcast();

  @override
  List<Relay> get relays => _relays.values.map((repo) => repo.relay).toList();

  @override
  Stream<List<Relay>> get relaysStream => _relaysStreamController.stream;

  @override
  Stream<SignedEvent> get eventsStream => _eventsStreamController.stream;

  @override
  Future<List<Stream<Relay>>> addRelays(List<String> urls) async {
    final relayStreams = <Stream<Relay>>[];

    urls.where((url) => !_relays.containsKey(url)).forEach((url) {
      final dataSource = WebSocketDataSourceImpl(url: url);
      final repository = RelayRepositoryImpl(dataSource);

      _relays[url] = repository;
      relayStreams.add(repository.relayStream);
    });

    // Make sure the events of the newly added relays are included in the merged
    //  streams.
    await Future.wait([
      _refreshRelaysStream(),
      _refreshEventsStream(),
    ]);

    return relayStreams;
  }

  @override
  void removeRelays(List<String> urls) async {
    final disposing = <Future>[];

    for (final url in urls) {
      final repo = _relays.remove(url);
      if (repo != null) {
        disposing.add(repo.dispose());
      }
    }

    // Wait for the repositories to be disposed and make sure the events of the
    //  removed relays are not included in the merged streams anymore.
    await Future.wait([
      Future.wait(disposing),
      _refreshRelaysStream(),
      _refreshEventsStream(),
    ]);
  }

  @override
  Future<bool> publishEvent(
    SignedEvent event, {
    List<String>? relayUrls,
    int successTreshold = 1,
    int timeoutSec = 10,
  }) async {
    final repositories = _getRepositories(relayUrls);

    if (repositories.isEmpty) {
      return false;
    }

    final publishEvents = await Future.wait(
      repositories.map(
        (repo) => repo.publishEvent(
          event,
          timeoutSec: timeoutSec,
        ),
      ),
    );

    final successCount =
        publishEvents.where((isPublished) => isPublished).length;

    return successCount >= successTreshold;
  }

  @override
  Future<List<SignedEvent>> getStoredEvents(
    List<Filters> filters, {
    List<String>? relayUrls,
  }) async {
    final repositories = _getRepositories(relayUrls);

    if (repositories.isEmpty) {
      return [];
    }

    final getStoredEvents = repositories.map(
      (repo) => repo.getStoredEvents(filters),
    );

    final storedEvents = await Future.wait(getStoredEvents);

    // Use a Set to automatically filter out duplicate events
    final Set<SignedEvent> events = {};
    for (final storedEvent in storedEvents) {
      events.addAll(storedEvent);
    }

    return events.toList();
  }

  @override
  Future<Stream<Event>> subscribe(
    Subscription subscription, {
    List<String>? relayUrls,
    void Function(List<Event>)? onEose,
  }) async {
    final repositories = _getRepositories(relayUrls);

    if (repositories.isEmpty) {
      return Stream.empty();
    }

    final subscribeStreams = await Future.wait(
      repositories.map(
        (repo) async => await repo.subscribe(
          subscription,
          onEose: onEose,
        ),
      ),
    );

    return StreamGroup.merge(subscribeStreams);
  }

  @override
  Future<void> unsubscribe(
    String subscriptionId, {
    List<String>? relayUrls,
    bool waitForRelayClosedMessage = false,
    int timeoutSec = 10,
  }) async {
    final repositories = _getRepositories(relayUrls);

    if (repositories.isEmpty) {
      return;
    }

    final closeSubscriptions = repositories.map(
      (repo) => repo.closeSubscription(
        subscriptionId,
        waitForRelayClosedMessage: waitForRelayClosedMessage,
        timeoutSec: timeoutSec,
      ),
    );

    await Future.wait(closeSubscriptions);
  }

  List<RelayRepository> _getRepositories(List<String>? relayUrls) {
    List<RelayRepository> repositories = [];

    // If specific relays are specified, only return those, else return all
    if (relayUrls != null) {
      for (final url in relayUrls) {
        final repo = _relays[url];
        if (repo != null) {
          repositories.add(repo);
        }
      }
    } else {
      repositories = _relays.values.toList();
    }

    return repositories;
  }

  Future<void> _refreshRelaysStream() async {
    // Cancel the previous relays subscription if it exists
    await _relaysStreamSubscription?.cancel();
    // Add an update of the new relays to the stream to be sure an update with the new relays is sent
    _relaysStreamController.add(relays);
    // Start streaming a merged stream that includes all added relay streams
    _relaysStreamSubscription =
        StreamGroup.merge(_relays.values.map((repo) => repo.relayStream))
            .map((_) => relays)
            .listen(_relaysStreamController.add);
  }

  Future<void> _refreshEventsStream() async {
    // Cancel the previous events subscription if it exists
    await _eventsStreamSubscription?.cancel();
    // Start streaming a merged stream of all relay event streams
    _eventsStreamSubscription = StreamGroup.merge(
            _relays.values.map((repo) => repo.eventStream.distinct()))
        .listen(_eventsStreamController.add);
  }
}
