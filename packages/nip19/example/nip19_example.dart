import 'package:nip19/nip19.dart';
import 'package:nip01/nip01.dart' as nip01;

void main() {
  final keyPair = nip01.KeyPair.generate();
  print('nsec: ${keyPair.nsec}');

  final keyPairFromNsec = Nip19KeyPair.fromNsec(keyPair.nsec);
  print('privateKey: ${keyPairFromNsec.privateKey}');

  final npubFromPublicKey = Nip19.npubFromHex(keyPair.publicKey);
  print('npub: $npubFromPublicKey');

  final npubToPublicKey = Nip19.npubToHex(npubFromPublicKey);
  print('publicKey: $npubToPublicKey');
}
