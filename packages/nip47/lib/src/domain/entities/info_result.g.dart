// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoResult _$GetInfoResultFromJson(Map<String, dynamic> json) =>
    GetInfoResult(
      alias: json['alias'] as String?,
      color: json['color'] as String?,
      pubkey: json['pubkey'] as String?,
      network: $enumDecodeNullable(_$BitcoinNetworkEnumMap, json['network']),
      blockHeight: (json['blockHeight'] as num?)?.toInt(),
      blockHash: json['blockHash'] as String?,
      methods: (json['methods'] as List<dynamic>)
          .map((e) => $enumDecode(_$MethodEnumMap, e))
          .toList(),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$NotificationTypeEnumMap, e))
          .toList(),
      customMethods: (json['customMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customNotifications: (json['customNotifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GetInfoResultToJson(GetInfoResult instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'color': instance.color,
      'pubkey': instance.pubkey,
      'network': _$BitcoinNetworkEnumMap[instance.network],
      'blockHeight': instance.blockHeight,
      'blockHash': instance.blockHash,
      'methods': instance.methods.map((e) => _$MethodEnumMap[e]!).toList(),
      'notifications': instance.notifications
          ?.map((e) => _$NotificationTypeEnumMap[e]!)
          .toList(),
      'customMethods': instance.customMethods,
      'customNotifications': instance.customNotifications,
    };

const _$BitcoinNetworkEnumMap = {
  BitcoinNetwork.mainnet: 'mainnet',
  BitcoinNetwork.testnet: 'testnet',
  BitcoinNetwork.signet: 'signet',
  BitcoinNetwork.mutinynet: 'mutinynet',
  BitcoinNetwork.regtest: 'regtest',
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
