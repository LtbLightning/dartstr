// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InfoEvent _$InfoEventFromJson(Map<String, dynamic> json) => _InfoEvent(
      walletServicePubkey: json['walletServicePubkey'] as String,
      methods: (json['methods'] as List<dynamic>)
          .map((e) => $enumDecode(_$MethodEnumMap, e))
          .toList(),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$NotificationTypeEnumMap, e))
          .toList(),
      clientPubkey: json['clientPubkey'] as String?,
      walletRelay: json['walletRelay'] == null
          ? null
          : Uri.parse(json['walletRelay'] as String),
      customMethods: (json['customMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customNotifications: (json['customNotifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InfoEventToJson(_InfoEvent instance) =>
    <String, dynamic>{
      'walletServicePubkey': instance.walletServicePubkey,
      'methods': instance.methods.map((e) => _$MethodEnumMap[e]!).toList(),
      'notifications': instance.notifications
          ?.map((e) => _$NotificationTypeEnumMap[e]!)
          .toList(),
      'clientPubkey': instance.clientPubkey,
      'walletRelay': instance.walletRelay?.toString(),
      'customMethods': instance.customMethods,
      'customNotifications': instance.customNotifications,
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
