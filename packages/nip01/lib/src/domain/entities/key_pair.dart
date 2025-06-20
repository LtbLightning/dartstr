import 'package:bip340/bip340.dart' as bip340;
import 'package:dartstr_utils/dartstr_utils.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_pair.freezed.dart';

@freezed
sealed class KeyPair with _$KeyPair {
  KeyPair._({String? privateKey})
      : privateKey = privateKey ?? SecretGenerator.secretHex(64) {
    if (privateKey != null && privateKey.length != 64) {
      throw ArgumentError('Private key must be 64 hex characters');
    }
  }
  factory KeyPair.generate() = _GenerateKeyPair;
  factory KeyPair.fromPrivateKey({
    required String privateKey,
  }) = _KeyPairFromPrivateKey;

  @override
  final String privateKey;

  String get publicKey => bip340.getPublicKey(privateKey);

  /// Signs a message using the private key and returns the signature.
  /// [message] - The message to sign. Must be 32-bytes hex-encoded (a hash of
  ///   the actual message).
  /// [return] -  The signature as a string of 64 bytes hex-encoded.
  String sign(String message) {
    final aux = SecretGenerator.secretHex(64);

    final signature = bip340.sign(privateKey, message, aux);

    return signature;
  }
}
