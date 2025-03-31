import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/entities.dart';

part 'info_result.freezed.dart';
part 'info_result.g.dart';

@freezed
sealed class InfoResult with _$InfoResult {
  const factory InfoResult({
    String? alias,
    String? color,
    String? pubkey,
    BitcoinNetwork? network,
    int? blockHeight,
    String? blockHash,
    required List<Method> methods,
    List<NotificationType>? notifications,
    List<String>? customMethods,
    List<String>? customNotifications,
  }) = GetInfoResult;
  const InfoResult._();

  factory InfoResult.fromJson(Map<String, dynamic> json) =>
      _$InfoResultFromJson(json);
}

enum BitcoinNetwork {
  mainnet('mainnet'),
  testnet('testnet'),
  signet('signet'),
  mutinynet('mutinynet'),
  regtest('regtest');

  final String plaintext;

  const BitcoinNetwork(this.plaintext);

  static BitcoinNetwork fromPlaintext(String plaintext) {
    return BitcoinNetwork.values.firstWhere(
      (network) => network.plaintext == plaintext,
      orElse: () => BitcoinNetwork.mainnet,
    );
  }
}
