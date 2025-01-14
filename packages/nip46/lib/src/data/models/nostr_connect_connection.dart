// A NostrConnect connection is a direct connection initiated by the client
class NostrConnectConnection {
  final String clientPublicKey;
  // One or more relay urls on which the client is listening for responses from the remote-signer
  final List<String> relayUrls;
  // Short random string that the remote-signer should return as the result field of its response
  final String secret;
  // Permissions the client is requesting be approved by the remote-signer
  final List<String>? perms;
  final String? name; // Name of the client application
  final String? url; // Canonical url of the client application
  final String? image; // Small image representing the client application

  static const String scheme = 'nostrconnect';

  NostrConnectConnection({
    required this.clientPublicKey,
    required this.relayUrls,
    required this.secret,
    this.perms,
    this.name,
    this.url,
    this.image,
  });

  factory NostrConnectConnection.parse(String connectionToken) {
    final uri = Uri.parse(connectionToken);

    if (uri.scheme != scheme) {
      throw ArgumentError('Invalid scheme: ${uri.scheme}');
    }

    final clientPublicKey = uri.path;
    final relayUrls = uri.queryParametersAll['relay'];
    final secret = uri.queryParameters['secret'];
    final perms = uri.queryParametersAll['perms'];
    final name = uri.queryParameters['name'];
    final url = uri.queryParameters['url'];
    final image = uri.queryParameters['image'];

    if (relayUrls == null || relayUrls.isEmpty) {
      throw ArgumentError('No relay urls provided');
    }
    if (secret == null) {
      throw ArgumentError('No secret provided');
    }

    return NostrConnectConnection(
      clientPublicKey: clientPublicKey,
      relayUrls: relayUrls,
      secret: secret,
      perms: perms,
      name: name,
      url: url,
      image: image,
    );
  }

  String get connectionToken => Uri(
        scheme: scheme,
        path: clientPublicKey,
        query:
            '${relayUrls.map((url) => 'relay=${Uri.encodeQueryComponent(url)}').join('&')}'
            '&secret=${Uri.encodeQueryComponent(secret)}'
            '${perms != null ? perms!.map((perm) => '&perms=${Uri.encodeQueryComponent(perm)}').join('') : ''}'
            '${name != null ? '&name=${Uri.encodeQueryComponent(name!)}' : ''}'
            '${url != null ? '&url=${Uri.encodeQueryComponent(url!)}' : ''}'
            '${image != null ? '&image=${Uri.encodeQueryComponent(image!)}' : ''}',
      ).toString();
}
