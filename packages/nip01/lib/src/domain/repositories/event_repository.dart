import 'package:nip01/src/domain/entities/entities.dart';

abstract class EventRepository {
  Stream<EventMessage> get eventStream;
  Stream<OkMessage> get okStream;
  Stream<EoseMessage> get eoseStream;
  Future<List<String>> publishEvent(
    Event event, {
    List<String>? relayUrls,
  });
  Future<List<Event>> getEvents(
    List<Filters> filters, {
    List<String>? relayUrls,
    int timeoutSeconds = 10,
  });
}
