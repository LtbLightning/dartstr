import 'package:nip01/nip01.dart';
import 'package:nip06/src/nip06_internal.dart';

/// Extends the nip01 [KeyPair] class to add key derivation from a mnemonic seed
///   phrase as described in NIP-06.
extension Nip06KeyPair on KeyPair {
  static KeyPair fromMnemonic(
    String mnemonic, {
    int accountIndex = 0,
    String passphrase = '',
  }) {
    final privateKey = Nip06.mnemonicToPrivateKey(
      mnemonic,
      accountIndex: accountIndex,
      passphrase: passphrase,
    );
    return KeyPair.fromPrivateKey(privateKey: privateKey);
  }
}
