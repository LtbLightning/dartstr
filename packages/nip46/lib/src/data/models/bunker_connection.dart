// A BunkerConnection is a direct connection initiated by remote-signer
class BunkerConnection {
  final String remoteSignerPubkey; // In hex format
  final List<String> relayUrls;
  final String? secret;

  static const String scheme = 'bunker';

  const BunkerConnection({
    required this.remoteSignerPubkey,
    required this.relayUrls,
    this.secret,
  });

  factory BunkerConnection.parse(String connectionToken) {
    final uri = Uri.parse(connectionToken);
    if (uri.scheme != scheme) {
      throw ArgumentError('Invalid scheme: ${uri.scheme}');
    }

    final relayUrls = uri.queryParametersAll['relay'];

    if (relayUrls == null || relayUrls.isEmpty) {
      throw ArgumentError('No relay urls provided');
    }

    final secret = uri.queryParameters['secret'];

    return BunkerConnection(
      remoteSignerPubkey: uri.path,
      relayUrls: relayUrls,
      secret: secret,
    );
  }

  String get connectionToken => Uri(
        scheme: scheme,
        path: remoteSignerPubkey,
        query: relayUrls
                .map((url) => 'relay=${Uri.encodeQueryComponent(url)}')
                .join('&') +
            (secret != null
                ? '&secret=${Uri.encodeQueryComponent(secret!)}'
                : ''),
      ).toString();
}
