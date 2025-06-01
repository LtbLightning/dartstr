import 'package:nip01/nip01.dart' as nip01;
import 'package:nip47/src/domain/entities/event_kind.dart';

extension Nip47Filters on nip01.Filters {
  static nip01.Filters infoEvents({
    required String walletServicePubkey,
    int? since,
  }) =>
      nip01.Filters(
        kinds: [EventKind.info.kind],
        tags: {
          'a': ['${EventKind.info.kind}:$walletServicePubkey:']
        },
        authors: [walletServicePubkey],
        since: since,
      );

  static nip01.Filters requests({
    required String walletServicePubkey,
    int? since,
  }) =>
      nip01.Filters(
        kinds: [EventKind.request.kind],
        tags: {
          'p': [walletServicePubkey]
        },
        since: since,
      );
}
