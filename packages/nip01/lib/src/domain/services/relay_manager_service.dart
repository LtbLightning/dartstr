import 'package:nip01/src/domain/entities/relay.dart';

abstract class RelayManagerService {
  Stream<List<Relay>> get relays;
}
