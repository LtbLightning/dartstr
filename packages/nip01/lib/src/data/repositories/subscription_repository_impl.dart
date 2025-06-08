import 'dart:async';
import 'dart:developer';

import 'package:nip01/nip01.dart';
import 'package:nip01/src/data/models/client_message_model.dart';
import 'package:nip01/src/data/models/filters_model.dart';
import 'package:nip01/src/data/models/relay_message_model.dart';
import 'package:nip01/src/data/models/relay_state.dart';

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final RelayDataSource _relayDataSource;
  final StreamController<ClosedMessage> _closedBroadcaster;
  final Map<String, List<String>> _relaySubscriptionIds;
  final Map<String, Subscription> _subscriptions;

  SubscriptionRepositoryImpl({
    required RelayDataSource relayDataSource,
  })  : _relayDataSource = relayDataSource,
        _subscriptions = {},
        _relaySubscriptionIds = {},
        _closedBroadcaster = StreamController<ClosedMessage>.broadcast() {
    _relayDataSource.messageStream.listen(
      (message) {
        if (message is RelayClosedMessageModel) {
          _handleClosedMessage(message);
        }
      },
    );

    // Listen to state changes of the relays to re-subscribe to subscriptions
    //  when a new connection is established
    _relayDataSource.stateStream.listen(
      (state) async {
        if (state is ConnectedRelayState) {
          // Re-subscribe to all subscriptions the relay had before
          final relayUrl = state.relayUrl;
          log('[EventRepositoryImpl] Re-subscribing to relay $relayUrl');
          // Get the subscriptions for this relay
          final subscriptionIds = _relaySubscriptionIds[relayUrl];
          final subscriptions = subscriptionIds
              ?.map((subscriptionId) => _subscriptions[subscriptionId])
              .whereType<Subscription>()
              .toList();

          if (subscriptions == null || subscriptions.isEmpty) {
            log('[EventRepositoryImpl] No subscriptions to re-subscribe to');
            return;
          }
          for (final subscription in subscriptions) {
            final message = ClientMessageModel.subscription(
                subscriptionId: subscription.id,
                filters: subscription.filters
                    .map((filter) => FiltersModel.fromEntity(filter))
                    .toList());
            final sentToRelays = await _relayDataSource
                .sendMessage(message, relayUrls: [relayUrl]);
            if (sentToRelays.isNotEmpty) {
              log('[EventRepositoryImpl] Re-subscribed to subscription: $subscription on relay $relayUrl');
            }
          }
        }
      },
    );
  }

  @override
  Stream<ClosedMessage> get closedStream => _closedBroadcaster.stream;

  // @dev If more than one relay is passed, the EoSE callback will be called
  //  for each relay that sends the EoSE message.
  @override
  Future<Subscription> subscribe({
    required String subscriptionId,
    required List<Filters> filters,
    List<String>? relayUrls,
  }) async {
    final relays = relayUrls ?? _relayDataSource.relayUrls;
    log('Subscribing to events with filters: $filters on relays: $relays');

    // Send the subscription message to start receiving events
    final message = ClientMessageModel.subscription(
      subscriptionId: subscriptionId,
      filters: filters.map((f) => FiltersModel.fromEntity(f)).toList(),
    );

    // Send the subscription message to all relays
    final sentToRelays =
        await _relayDataSource.sendMessage(message, relayUrls: relays);

    final subscription = Subscription(
      id: subscriptionId,
      filters: filters,
      relayUrls: sentToRelays,
    );

    // Add the subscription to cache so it can be re-subscribed when the relay
    //  reconnects
    for (final relayUrl in sentToRelays) {
      // Add the subscription to the relay's list of subscriptions
      _relaySubscriptionIds[relayUrl] ??= [];
      _relaySubscriptionIds[relayUrl]!.add(subscriptionId);
    }
    _subscriptions[subscription.id] = subscription;

    return subscription;
  }

  @override
  List<Subscription> getSubscriptionsByRelay(String relayUrl) {
    final subscriptionIds = _relaySubscriptionIds[relayUrl];
    if (subscriptionIds == null) {
      return [];
    }
    return subscriptionIds
        .map((subscriptionId) => _subscriptions[subscriptionId])
        .whereType<Subscription>()
        .toList();
  }

  @override
  List<Subscription> get subscriptions => _subscriptions.values.toList();

  @override
  Future<List<String>> unsubscribe(
    String subscriptionId, {
    List<String>? relayUrls,
  }) async {
    final relays = relayUrls ?? _relayDataSource.relayUrls;
    log('Closing subscription $subscriptionId on relays: $relays');

    // Send the close message to the relay
    final message = ClientMessageModel.close(subscriptionId);
    final sentToRelays =
        await _relayDataSource.sendMessage(message, relayUrls: relays);

    // Clean up everything related to the subscription
    for (final relayUrl in sentToRelays) {
      // Remove the subscription from the relay's list of subscriptions
      _relaySubscriptionIds[relayUrl]?.remove(subscriptionId);
    }
    _subscriptions.remove(subscriptionId);

    return sentToRelays;
  }

  _handleClosedMessage(RelayClosedMessageModel message) {
    log('[SubscriptionRepositoryImpl] Received closed message: '
        '${message.message} for subscription: ${message.subscriptionId} '
        'from relay ${message.relayUrl}');

    final closedMessage = ClosedMessage(
      subscriptionId: message.subscriptionId,
      relayUrl: message.relayUrl,
      message: message.message,
    );
    // Put it on the closed stream
    _closedBroadcaster.add(closedMessage);

    // Clean up
    // Remove the subscription from the relay's list of subscriptions
    _relaySubscriptionIds[message.relayUrl]?.remove(message.subscriptionId);
    // Remove the subscription from the cache if no more relays are subscribed
    //  to it
    final subscription = _subscriptions[message.subscriptionId];
    final relayUrls = subscription?.relayUrls;
    if (relayUrls != null && relayUrls.isNotEmpty) {
      relayUrls.remove(message.relayUrl);
      if (relayUrls.isEmpty) {
        _subscriptions.remove(message.subscriptionId);
      } else {
        _subscriptions[message.subscriptionId] = subscription!.copyWith(
          relayUrls: relayUrls,
        );
      }
    } else {
      _subscriptions.remove(message.subscriptionId);
    }
  }
}
