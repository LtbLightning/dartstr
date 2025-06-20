import 'package:nip06/nip06.dart';
import 'package:nip01/nip01.dart' as nip01;

void main() {
  final keyPair = nip01.KeyPair.generate();
  print('Private key: ${keyPair.privateKey}');

  final keyPairFromMnemonic = Nip06KeyPair.fromMnemonic(
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'abandon '
    'about',
  );
  print('Private key: ${keyPairFromMnemonic.privateKey}');
}
