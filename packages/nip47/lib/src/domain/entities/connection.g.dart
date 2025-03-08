// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletConnection _$WalletConnectionFromJson(Map<String, dynamic> json) =>
    WalletConnection(
      pubkey: json['pubkey'] as String,
      walletServicePubkey: json['walletServicePubkey'] as String,
      relayUrl: json['relayUrl'] as String,
      secret: json['secret'] as String,
      methods: (json['methods'] as List<dynamic>)
          .map((e) => $enumDecode(_$MethodEnumMap, e))
          .toList(),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$NotificationTypeEnumMap, e))
          .toList(),
      lud16: json['lud16'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$WalletConnectionToJson(WalletConnection instance) =>
    <String, dynamic>{
      'pubkey': instance.pubkey,
      'walletServicePubkey': instance.walletServicePubkey,
      'relayUrl': instance.relayUrl,
      'secret': instance.secret,
      'methods': instance.methods.map((e) => _$MethodEnumMap[e]!).toList(),
      'notifications': instance.notifications
          ?.map((e) => _$NotificationTypeEnumMap[e]!)
          .toList(),
      'lud16': instance.lud16,
      'runtimeType': instance.$type,
    };

const _$MethodEnumMap = {
  Method.payInvoice: 'payInvoice',
  Method.multiPayInvoice: 'multiPayInvoice',
  Method.payKeysend: 'payKeysend',
  Method.multiPayKeysend: 'multiPayKeysend',
  Method.makeInvoice: 'makeInvoice',
  Method.lookupInvoice: 'lookupInvoice',
  Method.listTransactions: 'listTransactions',
  Method.getBalance: 'getBalance',
  Method.getInfo: 'getInfo',
  Method.custom: 'custom',
};

const _$NotificationTypeEnumMap = {
  NotificationType.paymentReceived: 'paymentReceived',
  NotificationType.paymentSent: 'paymentSent',
  NotificationType.custom: 'custom',
};

ClientConnection _$ClientConnectionFromJson(Map<String, dynamic> json) =>
    ClientConnection(
      pubkey: json['pubkey'] as String,
      clientPubkey: json['clientPubkey'] as String,
      relayUrl: json['relayUrl'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ClientConnectionToJson(ClientConnection instance) =>
    <String, dynamic>{
      'pubkey': instance.pubkey,
      'clientPubkey': instance.clientPubkey,
      'relayUrl': instance.relayUrl,
      'runtimeType': instance.$type,
    };
