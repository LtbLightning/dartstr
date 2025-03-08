import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/enums/event_kind.dart';

extension Nip47Filters on nip01.Filters {
  static nip01.Filters infoEvents({
    required String walletServicePubkey,
    required String relayUrl,
    int? since,
  }) =>
      nip01.Filters(
        kinds: [EventKind.info.value],
        tags: {
          'a': [
            '${EventKind.info.value}:$walletServicePubkey:',
            relayUrl,
          ]
        },
        authors: [walletServicePubkey],
        since: since,
      );

  static nip01.Filters requests({
    required String walletServicePubkey,
    int? since,
  }) =>
      nip01.Filters(
        kinds: [EventKind.request.value],
        tags: {
          'p': [walletServicePubkey]
        },
        since: since,
      );
}
