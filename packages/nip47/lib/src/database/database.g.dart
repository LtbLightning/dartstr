// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ClientConnectionsTable extends ClientConnections
    with TableInfo<$ClientConnectionsTable, ClientConnectionTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientConnectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientPubkeyMeta =
      const VerificationMeta('clientPubkey');
  @override
  late final GeneratedColumn<String> clientPubkey = GeneratedColumn<String>(
      'client_pubkey', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _walletServiceAccountIndexMeta =
      const VerificationMeta('walletServiceAccountIndex');
  @override
  late final GeneratedColumn<int> walletServiceAccountIndex =
      GeneratedColumn<int>('wallet_service_account_index', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _walletServicePubkeyMeta =
      const VerificationMeta('walletServicePubkey');
  @override
  late final GeneratedColumn<String> walletServicePubkey =
      GeneratedColumn<String>('wallet_service_pubkey', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> relays =
      GeneratedColumn<String>('relays', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>(
              $ClientConnectionsTable.$converterrelays);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      clientRelays = GeneratedColumn<String>('client_relays', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$converterclientRelaysn);
  static const VerificationMeta _budgetRenewalMeta =
      const VerificationMeta('budgetRenewal');
  @override
  late final GeneratedColumn<String> budgetRenewal = GeneratedColumn<String>(
      'budget_renewal', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _budgetRenewedAtMeta =
      const VerificationMeta('budgetRenewedAt');
  @override
  late final GeneratedColumn<int> budgetRenewedAt = GeneratedColumn<int>(
      'budget_renewed_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _maxAmountSatMeta =
      const VerificationMeta('maxAmountSat');
  @override
  late final GeneratedColumn<int> maxAmountSat = GeneratedColumn<int>(
      'max_amount_sat', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _remainingAmountSatMeta =
      const VerificationMeta('remainingAmountSat');
  @override
  late final GeneratedColumn<int> remainingAmountSat = GeneratedColumn<int>(
      'remaining_amount_sat', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _expiresAtMeta =
      const VerificationMeta('expiresAt');
  @override
  late final GeneratedColumn<int> expiresAt = GeneratedColumn<int>(
      'expires_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> methods =
      GeneratedColumn<String>('methods', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$convertermethodsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      customMethods = GeneratedColumn<String>(
              'custom_methods', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$convertercustomMethodsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      notifications = GeneratedColumn<String>(
              'notifications', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$converternotificationsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      customNotifications = GeneratedColumn<String>(
              'custom_notifications', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$convertercustomNotificationsn);
  static const VerificationMeta _isolatedMeta =
      const VerificationMeta('isolated');
  @override
  late final GeneratedColumn<bool> isolated = GeneratedColumn<bool>(
      'isolated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isolated" IN (0, 1))'));
  static const VerificationMeta _isFrozenMeta =
      const VerificationMeta('isFrozen');
  @override
  late final GeneratedColumn<bool> isFrozen = GeneratedColumn<bool>(
      'is_frozen', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_frozen" IN (0, 1))'));
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      categories = GeneratedColumn<String>('categories', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ClientConnectionsTable.$convertercategoriesn);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        clientPubkey,
        name,
        walletServiceAccountIndex,
        walletServicePubkey,
        relays,
        clientRelays,
        budgetRenewal,
        budgetRenewedAt,
        maxAmountSat,
        remainingAmountSat,
        expiresAt,
        methods,
        customMethods,
        notifications,
        customNotifications,
        isolated,
        isFrozen,
        categories,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_connections';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClientConnectionTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_pubkey')) {
      context.handle(
          _clientPubkeyMeta,
          clientPubkey.isAcceptableOrUnknown(
              data['client_pubkey']!, _clientPubkeyMeta));
    } else if (isInserting) {
      context.missing(_clientPubkeyMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('wallet_service_account_index')) {
      context.handle(
          _walletServiceAccountIndexMeta,
          walletServiceAccountIndex.isAcceptableOrUnknown(
              data['wallet_service_account_index']!,
              _walletServiceAccountIndexMeta));
    } else if (isInserting) {
      context.missing(_walletServiceAccountIndexMeta);
    }
    if (data.containsKey('wallet_service_pubkey')) {
      context.handle(
          _walletServicePubkeyMeta,
          walletServicePubkey.isAcceptableOrUnknown(
              data['wallet_service_pubkey']!, _walletServicePubkeyMeta));
    } else if (isInserting) {
      context.missing(_walletServicePubkeyMeta);
    }
    if (data.containsKey('budget_renewal')) {
      context.handle(
          _budgetRenewalMeta,
          budgetRenewal.isAcceptableOrUnknown(
              data['budget_renewal']!, _budgetRenewalMeta));
    } else if (isInserting) {
      context.missing(_budgetRenewalMeta);
    }
    if (data.containsKey('budget_renewed_at')) {
      context.handle(
          _budgetRenewedAtMeta,
          budgetRenewedAt.isAcceptableOrUnknown(
              data['budget_renewed_at']!, _budgetRenewedAtMeta));
    } else if (isInserting) {
      context.missing(_budgetRenewedAtMeta);
    }
    if (data.containsKey('max_amount_sat')) {
      context.handle(
          _maxAmountSatMeta,
          maxAmountSat.isAcceptableOrUnknown(
              data['max_amount_sat']!, _maxAmountSatMeta));
    }
    if (data.containsKey('remaining_amount_sat')) {
      context.handle(
          _remainingAmountSatMeta,
          remainingAmountSat.isAcceptableOrUnknown(
              data['remaining_amount_sat']!, _remainingAmountSatMeta));
    }
    if (data.containsKey('expires_at')) {
      context.handle(_expiresAtMeta,
          expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta));
    }
    if (data.containsKey('isolated')) {
      context.handle(_isolatedMeta,
          isolated.isAcceptableOrUnknown(data['isolated']!, _isolatedMeta));
    } else if (isInserting) {
      context.missing(_isolatedMeta);
    }
    if (data.containsKey('is_frozen')) {
      context.handle(_isFrozenMeta,
          isFrozen.isAcceptableOrUnknown(data['is_frozen']!, _isFrozenMeta));
    } else if (isInserting) {
      context.missing(_isFrozenMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientPubkey};
  @override
  ClientConnectionTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientConnectionTable(
      clientPubkey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_pubkey'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      walletServiceAccountIndex: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}wallet_service_account_index'])!,
      walletServicePubkey: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}wallet_service_pubkey'])!,
      relays: $ClientConnectionsTable.$converterrelays.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}relays'])!),
      clientRelays: $ClientConnectionsTable.$converterclientRelaysn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}client_relays'])),
      budgetRenewal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}budget_renewal'])!,
      budgetRenewedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}budget_renewed_at'])!,
      maxAmountSat: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_amount_sat']),
      remainingAmountSat: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}remaining_amount_sat']),
      expiresAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}expires_at']),
      methods: $ClientConnectionsTable.$convertermethodsn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}methods'])),
      customMethods: $ClientConnectionsTable.$convertercustomMethodsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}custom_methods'])),
      notifications: $ClientConnectionsTable.$converternotificationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}notifications'])),
      customNotifications: $ClientConnectionsTable
          .$convertercustomNotificationsn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}custom_notifications'])),
      isolated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isolated'])!,
      isFrozen: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_frozen'])!,
      categories: $ClientConnectionsTable.$convertercategoriesn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}categories'])),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ClientConnectionsTable createAlias(String alias) {
    return $ClientConnectionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterrelays =
      const StringListTypeConverter();
  static TypeConverter<List<String>, String> $converterclientRelays =
      const StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $converterclientRelaysn =
      NullAwareTypeConverter.wrap($converterclientRelays);
  static TypeConverter<List<String>, String> $convertermethods =
      StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $convertermethodsn =
      NullAwareTypeConverter.wrap($convertermethods);
  static TypeConverter<List<String>, String> $convertercustomMethods =
      const StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $convertercustomMethodsn =
      NullAwareTypeConverter.wrap($convertercustomMethods);
  static TypeConverter<List<String>, String> $converternotifications =
      const StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $converternotificationsn =
      NullAwareTypeConverter.wrap($converternotifications);
  static TypeConverter<List<String>, String> $convertercustomNotifications =
      const StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $convertercustomNotificationsn =
      NullAwareTypeConverter.wrap($convertercustomNotifications);
  static TypeConverter<List<String>, String> $convertercategories =
      const StringListTypeConverter();
  static TypeConverter<List<String>?, String?> $convertercategoriesn =
      NullAwareTypeConverter.wrap($convertercategories);
}

class ClientConnectionTable extends DataClass
    implements Insertable<ClientConnectionTable> {
  final String clientPubkey;
  final String name;
  final int walletServiceAccountIndex;
  final String walletServicePubkey;
  final List<String> relays;
  final List<String>? clientRelays;
  final String budgetRenewal;
  final int budgetRenewedAt;
  final int? maxAmountSat;
  final int? remainingAmountSat;
  final int? expiresAt;
  final List<String>? methods;
  final List<String>? customMethods;
  final List<String>? notifications;
  final List<String>? customNotifications;
  final bool isolated;
  final bool isFrozen;
  final List<String>? categories;
  final DateTime createdAt;
  const ClientConnectionTable(
      {required this.clientPubkey,
      required this.name,
      required this.walletServiceAccountIndex,
      required this.walletServicePubkey,
      required this.relays,
      this.clientRelays,
      required this.budgetRenewal,
      required this.budgetRenewedAt,
      this.maxAmountSat,
      this.remainingAmountSat,
      this.expiresAt,
      this.methods,
      this.customMethods,
      this.notifications,
      this.customNotifications,
      required this.isolated,
      required this.isFrozen,
      this.categories,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_pubkey'] = Variable<String>(clientPubkey);
    map['name'] = Variable<String>(name);
    map['wallet_service_account_index'] =
        Variable<int>(walletServiceAccountIndex);
    map['wallet_service_pubkey'] = Variable<String>(walletServicePubkey);
    {
      map['relays'] = Variable<String>(
          $ClientConnectionsTable.$converterrelays.toSql(relays));
    }
    if (!nullToAbsent || clientRelays != null) {
      map['client_relays'] = Variable<String>(
          $ClientConnectionsTable.$converterclientRelaysn.toSql(clientRelays));
    }
    map['budget_renewal'] = Variable<String>(budgetRenewal);
    map['budget_renewed_at'] = Variable<int>(budgetRenewedAt);
    if (!nullToAbsent || maxAmountSat != null) {
      map['max_amount_sat'] = Variable<int>(maxAmountSat);
    }
    if (!nullToAbsent || remainingAmountSat != null) {
      map['remaining_amount_sat'] = Variable<int>(remainingAmountSat);
    }
    if (!nullToAbsent || expiresAt != null) {
      map['expires_at'] = Variable<int>(expiresAt);
    }
    if (!nullToAbsent || methods != null) {
      map['methods'] = Variable<String>(
          $ClientConnectionsTable.$convertermethodsn.toSql(methods));
    }
    if (!nullToAbsent || customMethods != null) {
      map['custom_methods'] = Variable<String>($ClientConnectionsTable
          .$convertercustomMethodsn
          .toSql(customMethods));
    }
    if (!nullToAbsent || notifications != null) {
      map['notifications'] = Variable<String>($ClientConnectionsTable
          .$converternotificationsn
          .toSql(notifications));
    }
    if (!nullToAbsent || customNotifications != null) {
      map['custom_notifications'] = Variable<String>($ClientConnectionsTable
          .$convertercustomNotificationsn
          .toSql(customNotifications));
    }
    map['isolated'] = Variable<bool>(isolated);
    map['is_frozen'] = Variable<bool>(isFrozen);
    if (!nullToAbsent || categories != null) {
      map['categories'] = Variable<String>(
          $ClientConnectionsTable.$convertercategoriesn.toSql(categories));
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ClientConnectionsCompanion toCompanion(bool nullToAbsent) {
    return ClientConnectionsCompanion(
      clientPubkey: Value(clientPubkey),
      name: Value(name),
      walletServiceAccountIndex: Value(walletServiceAccountIndex),
      walletServicePubkey: Value(walletServicePubkey),
      relays: Value(relays),
      clientRelays: clientRelays == null && nullToAbsent
          ? const Value.absent()
          : Value(clientRelays),
      budgetRenewal: Value(budgetRenewal),
      budgetRenewedAt: Value(budgetRenewedAt),
      maxAmountSat: maxAmountSat == null && nullToAbsent
          ? const Value.absent()
          : Value(maxAmountSat),
      remainingAmountSat: remainingAmountSat == null && nullToAbsent
          ? const Value.absent()
          : Value(remainingAmountSat),
      expiresAt: expiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(expiresAt),
      methods: methods == null && nullToAbsent
          ? const Value.absent()
          : Value(methods),
      customMethods: customMethods == null && nullToAbsent
          ? const Value.absent()
          : Value(customMethods),
      notifications: notifications == null && nullToAbsent
          ? const Value.absent()
          : Value(notifications),
      customNotifications: customNotifications == null && nullToAbsent
          ? const Value.absent()
          : Value(customNotifications),
      isolated: Value(isolated),
      isFrozen: Value(isFrozen),
      categories: categories == null && nullToAbsent
          ? const Value.absent()
          : Value(categories),
      createdAt: Value(createdAt),
    );
  }

  factory ClientConnectionTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientConnectionTable(
      clientPubkey: serializer.fromJson<String>(json['clientPubkey']),
      name: serializer.fromJson<String>(json['name']),
      walletServiceAccountIndex:
          serializer.fromJson<int>(json['walletServiceAccountIndex']),
      walletServicePubkey:
          serializer.fromJson<String>(json['walletServicePubkey']),
      relays: serializer.fromJson<List<String>>(json['relays']),
      clientRelays: serializer.fromJson<List<String>?>(json['clientRelays']),
      budgetRenewal: serializer.fromJson<String>(json['budgetRenewal']),
      budgetRenewedAt: serializer.fromJson<int>(json['budgetRenewedAt']),
      maxAmountSat: serializer.fromJson<int?>(json['maxAmountSat']),
      remainingAmountSat: serializer.fromJson<int?>(json['remainingAmountSat']),
      expiresAt: serializer.fromJson<int?>(json['expiresAt']),
      methods: serializer.fromJson<List<String>?>(json['methods']),
      customMethods: serializer.fromJson<List<String>?>(json['customMethods']),
      notifications: serializer.fromJson<List<String>?>(json['notifications']),
      customNotifications:
          serializer.fromJson<List<String>?>(json['customNotifications']),
      isolated: serializer.fromJson<bool>(json['isolated']),
      isFrozen: serializer.fromJson<bool>(json['isFrozen']),
      categories: serializer.fromJson<List<String>?>(json['categories']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientPubkey': serializer.toJson<String>(clientPubkey),
      'name': serializer.toJson<String>(name),
      'walletServiceAccountIndex':
          serializer.toJson<int>(walletServiceAccountIndex),
      'walletServicePubkey': serializer.toJson<String>(walletServicePubkey),
      'relays': serializer.toJson<List<String>>(relays),
      'clientRelays': serializer.toJson<List<String>?>(clientRelays),
      'budgetRenewal': serializer.toJson<String>(budgetRenewal),
      'budgetRenewedAt': serializer.toJson<int>(budgetRenewedAt),
      'maxAmountSat': serializer.toJson<int?>(maxAmountSat),
      'remainingAmountSat': serializer.toJson<int?>(remainingAmountSat),
      'expiresAt': serializer.toJson<int?>(expiresAt),
      'methods': serializer.toJson<List<String>?>(methods),
      'customMethods': serializer.toJson<List<String>?>(customMethods),
      'notifications': serializer.toJson<List<String>?>(notifications),
      'customNotifications':
          serializer.toJson<List<String>?>(customNotifications),
      'isolated': serializer.toJson<bool>(isolated),
      'isFrozen': serializer.toJson<bool>(isFrozen),
      'categories': serializer.toJson<List<String>?>(categories),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ClientConnectionTable copyWith(
          {String? clientPubkey,
          String? name,
          int? walletServiceAccountIndex,
          String? walletServicePubkey,
          List<String>? relays,
          Value<List<String>?> clientRelays = const Value.absent(),
          String? budgetRenewal,
          int? budgetRenewedAt,
          Value<int?> maxAmountSat = const Value.absent(),
          Value<int?> remainingAmountSat = const Value.absent(),
          Value<int?> expiresAt = const Value.absent(),
          Value<List<String>?> methods = const Value.absent(),
          Value<List<String>?> customMethods = const Value.absent(),
          Value<List<String>?> notifications = const Value.absent(),
          Value<List<String>?> customNotifications = const Value.absent(),
          bool? isolated,
          bool? isFrozen,
          Value<List<String>?> categories = const Value.absent(),
          DateTime? createdAt}) =>
      ClientConnectionTable(
        clientPubkey: clientPubkey ?? this.clientPubkey,
        name: name ?? this.name,
        walletServiceAccountIndex:
            walletServiceAccountIndex ?? this.walletServiceAccountIndex,
        walletServicePubkey: walletServicePubkey ?? this.walletServicePubkey,
        relays: relays ?? this.relays,
        clientRelays:
            clientRelays.present ? clientRelays.value : this.clientRelays,
        budgetRenewal: budgetRenewal ?? this.budgetRenewal,
        budgetRenewedAt: budgetRenewedAt ?? this.budgetRenewedAt,
        maxAmountSat:
            maxAmountSat.present ? maxAmountSat.value : this.maxAmountSat,
        remainingAmountSat: remainingAmountSat.present
            ? remainingAmountSat.value
            : this.remainingAmountSat,
        expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,
        methods: methods.present ? methods.value : this.methods,
        customMethods:
            customMethods.present ? customMethods.value : this.customMethods,
        notifications:
            notifications.present ? notifications.value : this.notifications,
        customNotifications: customNotifications.present
            ? customNotifications.value
            : this.customNotifications,
        isolated: isolated ?? this.isolated,
        isFrozen: isFrozen ?? this.isFrozen,
        categories: categories.present ? categories.value : this.categories,
        createdAt: createdAt ?? this.createdAt,
      );
  ClientConnectionTable copyWithCompanion(ClientConnectionsCompanion data) {
    return ClientConnectionTable(
      clientPubkey: data.clientPubkey.present
          ? data.clientPubkey.value
          : this.clientPubkey,
      name: data.name.present ? data.name.value : this.name,
      walletServiceAccountIndex: data.walletServiceAccountIndex.present
          ? data.walletServiceAccountIndex.value
          : this.walletServiceAccountIndex,
      walletServicePubkey: data.walletServicePubkey.present
          ? data.walletServicePubkey.value
          : this.walletServicePubkey,
      relays: data.relays.present ? data.relays.value : this.relays,
      clientRelays: data.clientRelays.present
          ? data.clientRelays.value
          : this.clientRelays,
      budgetRenewal: data.budgetRenewal.present
          ? data.budgetRenewal.value
          : this.budgetRenewal,
      budgetRenewedAt: data.budgetRenewedAt.present
          ? data.budgetRenewedAt.value
          : this.budgetRenewedAt,
      maxAmountSat: data.maxAmountSat.present
          ? data.maxAmountSat.value
          : this.maxAmountSat,
      remainingAmountSat: data.remainingAmountSat.present
          ? data.remainingAmountSat.value
          : this.remainingAmountSat,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
      methods: data.methods.present ? data.methods.value : this.methods,
      customMethods: data.customMethods.present
          ? data.customMethods.value
          : this.customMethods,
      notifications: data.notifications.present
          ? data.notifications.value
          : this.notifications,
      customNotifications: data.customNotifications.present
          ? data.customNotifications.value
          : this.customNotifications,
      isolated: data.isolated.present ? data.isolated.value : this.isolated,
      isFrozen: data.isFrozen.present ? data.isFrozen.value : this.isFrozen,
      categories:
          data.categories.present ? data.categories.value : this.categories,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientConnectionTable(')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('name: $name, ')
          ..write('walletServiceAccountIndex: $walletServiceAccountIndex, ')
          ..write('walletServicePubkey: $walletServicePubkey, ')
          ..write('relays: $relays, ')
          ..write('clientRelays: $clientRelays, ')
          ..write('budgetRenewal: $budgetRenewal, ')
          ..write('budgetRenewedAt: $budgetRenewedAt, ')
          ..write('maxAmountSat: $maxAmountSat, ')
          ..write('remainingAmountSat: $remainingAmountSat, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('methods: $methods, ')
          ..write('customMethods: $customMethods, ')
          ..write('notifications: $notifications, ')
          ..write('customNotifications: $customNotifications, ')
          ..write('isolated: $isolated, ')
          ..write('isFrozen: $isFrozen, ')
          ..write('categories: $categories, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      clientPubkey,
      name,
      walletServiceAccountIndex,
      walletServicePubkey,
      relays,
      clientRelays,
      budgetRenewal,
      budgetRenewedAt,
      maxAmountSat,
      remainingAmountSat,
      expiresAt,
      methods,
      customMethods,
      notifications,
      customNotifications,
      isolated,
      isFrozen,
      categories,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientConnectionTable &&
          other.clientPubkey == this.clientPubkey &&
          other.name == this.name &&
          other.walletServiceAccountIndex == this.walletServiceAccountIndex &&
          other.walletServicePubkey == this.walletServicePubkey &&
          other.relays == this.relays &&
          other.clientRelays == this.clientRelays &&
          other.budgetRenewal == this.budgetRenewal &&
          other.budgetRenewedAt == this.budgetRenewedAt &&
          other.maxAmountSat == this.maxAmountSat &&
          other.remainingAmountSat == this.remainingAmountSat &&
          other.expiresAt == this.expiresAt &&
          other.methods == this.methods &&
          other.customMethods == this.customMethods &&
          other.notifications == this.notifications &&
          other.customNotifications == this.customNotifications &&
          other.isolated == this.isolated &&
          other.isFrozen == this.isFrozen &&
          other.categories == this.categories &&
          other.createdAt == this.createdAt);
}

class ClientConnectionsCompanion
    extends UpdateCompanion<ClientConnectionTable> {
  final Value<String> clientPubkey;
  final Value<String> name;
  final Value<int> walletServiceAccountIndex;
  final Value<String> walletServicePubkey;
  final Value<List<String>> relays;
  final Value<List<String>?> clientRelays;
  final Value<String> budgetRenewal;
  final Value<int> budgetRenewedAt;
  final Value<int?> maxAmountSat;
  final Value<int?> remainingAmountSat;
  final Value<int?> expiresAt;
  final Value<List<String>?> methods;
  final Value<List<String>?> customMethods;
  final Value<List<String>?> notifications;
  final Value<List<String>?> customNotifications;
  final Value<bool> isolated;
  final Value<bool> isFrozen;
  final Value<List<String>?> categories;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ClientConnectionsCompanion({
    this.clientPubkey = const Value.absent(),
    this.name = const Value.absent(),
    this.walletServiceAccountIndex = const Value.absent(),
    this.walletServicePubkey = const Value.absent(),
    this.relays = const Value.absent(),
    this.clientRelays = const Value.absent(),
    this.budgetRenewal = const Value.absent(),
    this.budgetRenewedAt = const Value.absent(),
    this.maxAmountSat = const Value.absent(),
    this.remainingAmountSat = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.methods = const Value.absent(),
    this.customMethods = const Value.absent(),
    this.notifications = const Value.absent(),
    this.customNotifications = const Value.absent(),
    this.isolated = const Value.absent(),
    this.isFrozen = const Value.absent(),
    this.categories = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientConnectionsCompanion.insert({
    required String clientPubkey,
    required String name,
    required int walletServiceAccountIndex,
    required String walletServicePubkey,
    required List<String> relays,
    this.clientRelays = const Value.absent(),
    required String budgetRenewal,
    required int budgetRenewedAt,
    this.maxAmountSat = const Value.absent(),
    this.remainingAmountSat = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.methods = const Value.absent(),
    this.customMethods = const Value.absent(),
    this.notifications = const Value.absent(),
    this.customNotifications = const Value.absent(),
    required bool isolated,
    required bool isFrozen,
    this.categories = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : clientPubkey = Value(clientPubkey),
        name = Value(name),
        walletServiceAccountIndex = Value(walletServiceAccountIndex),
        walletServicePubkey = Value(walletServicePubkey),
        relays = Value(relays),
        budgetRenewal = Value(budgetRenewal),
        budgetRenewedAt = Value(budgetRenewedAt),
        isolated = Value(isolated),
        isFrozen = Value(isFrozen),
        createdAt = Value(createdAt);
  static Insertable<ClientConnectionTable> custom({
    Expression<String>? clientPubkey,
    Expression<String>? name,
    Expression<int>? walletServiceAccountIndex,
    Expression<String>? walletServicePubkey,
    Expression<String>? relays,
    Expression<String>? clientRelays,
    Expression<String>? budgetRenewal,
    Expression<int>? budgetRenewedAt,
    Expression<int>? maxAmountSat,
    Expression<int>? remainingAmountSat,
    Expression<int>? expiresAt,
    Expression<String>? methods,
    Expression<String>? customMethods,
    Expression<String>? notifications,
    Expression<String>? customNotifications,
    Expression<bool>? isolated,
    Expression<bool>? isFrozen,
    Expression<String>? categories,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientPubkey != null) 'client_pubkey': clientPubkey,
      if (name != null) 'name': name,
      if (walletServiceAccountIndex != null)
        'wallet_service_account_index': walletServiceAccountIndex,
      if (walletServicePubkey != null)
        'wallet_service_pubkey': walletServicePubkey,
      if (relays != null) 'relays': relays,
      if (clientRelays != null) 'client_relays': clientRelays,
      if (budgetRenewal != null) 'budget_renewal': budgetRenewal,
      if (budgetRenewedAt != null) 'budget_renewed_at': budgetRenewedAt,
      if (maxAmountSat != null) 'max_amount_sat': maxAmountSat,
      if (remainingAmountSat != null)
        'remaining_amount_sat': remainingAmountSat,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (methods != null) 'methods': methods,
      if (customMethods != null) 'custom_methods': customMethods,
      if (notifications != null) 'notifications': notifications,
      if (customNotifications != null)
        'custom_notifications': customNotifications,
      if (isolated != null) 'isolated': isolated,
      if (isFrozen != null) 'is_frozen': isFrozen,
      if (categories != null) 'categories': categories,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientConnectionsCompanion copyWith(
      {Value<String>? clientPubkey,
      Value<String>? name,
      Value<int>? walletServiceAccountIndex,
      Value<String>? walletServicePubkey,
      Value<List<String>>? relays,
      Value<List<String>?>? clientRelays,
      Value<String>? budgetRenewal,
      Value<int>? budgetRenewedAt,
      Value<int?>? maxAmountSat,
      Value<int?>? remainingAmountSat,
      Value<int?>? expiresAt,
      Value<List<String>?>? methods,
      Value<List<String>?>? customMethods,
      Value<List<String>?>? notifications,
      Value<List<String>?>? customNotifications,
      Value<bool>? isolated,
      Value<bool>? isFrozen,
      Value<List<String>?>? categories,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ClientConnectionsCompanion(
      clientPubkey: clientPubkey ?? this.clientPubkey,
      name: name ?? this.name,
      walletServiceAccountIndex:
          walletServiceAccountIndex ?? this.walletServiceAccountIndex,
      walletServicePubkey: walletServicePubkey ?? this.walletServicePubkey,
      relays: relays ?? this.relays,
      clientRelays: clientRelays ?? this.clientRelays,
      budgetRenewal: budgetRenewal ?? this.budgetRenewal,
      budgetRenewedAt: budgetRenewedAt ?? this.budgetRenewedAt,
      maxAmountSat: maxAmountSat ?? this.maxAmountSat,
      remainingAmountSat: remainingAmountSat ?? this.remainingAmountSat,
      expiresAt: expiresAt ?? this.expiresAt,
      methods: methods ?? this.methods,
      customMethods: customMethods ?? this.customMethods,
      notifications: notifications ?? this.notifications,
      customNotifications: customNotifications ?? this.customNotifications,
      isolated: isolated ?? this.isolated,
      isFrozen: isFrozen ?? this.isFrozen,
      categories: categories ?? this.categories,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientPubkey.present) {
      map['client_pubkey'] = Variable<String>(clientPubkey.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (walletServiceAccountIndex.present) {
      map['wallet_service_account_index'] =
          Variable<int>(walletServiceAccountIndex.value);
    }
    if (walletServicePubkey.present) {
      map['wallet_service_pubkey'] =
          Variable<String>(walletServicePubkey.value);
    }
    if (relays.present) {
      map['relays'] = Variable<String>(
          $ClientConnectionsTable.$converterrelays.toSql(relays.value));
    }
    if (clientRelays.present) {
      map['client_relays'] = Variable<String>($ClientConnectionsTable
          .$converterclientRelaysn
          .toSql(clientRelays.value));
    }
    if (budgetRenewal.present) {
      map['budget_renewal'] = Variable<String>(budgetRenewal.value);
    }
    if (budgetRenewedAt.present) {
      map['budget_renewed_at'] = Variable<int>(budgetRenewedAt.value);
    }
    if (maxAmountSat.present) {
      map['max_amount_sat'] = Variable<int>(maxAmountSat.value);
    }
    if (remainingAmountSat.present) {
      map['remaining_amount_sat'] = Variable<int>(remainingAmountSat.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<int>(expiresAt.value);
    }
    if (methods.present) {
      map['methods'] = Variable<String>(
          $ClientConnectionsTable.$convertermethodsn.toSql(methods.value));
    }
    if (customMethods.present) {
      map['custom_methods'] = Variable<String>($ClientConnectionsTable
          .$convertercustomMethodsn
          .toSql(customMethods.value));
    }
    if (notifications.present) {
      map['notifications'] = Variable<String>($ClientConnectionsTable
          .$converternotificationsn
          .toSql(notifications.value));
    }
    if (customNotifications.present) {
      map['custom_notifications'] = Variable<String>($ClientConnectionsTable
          .$convertercustomNotificationsn
          .toSql(customNotifications.value));
    }
    if (isolated.present) {
      map['isolated'] = Variable<bool>(isolated.value);
    }
    if (isFrozen.present) {
      map['is_frozen'] = Variable<bool>(isFrozen.value);
    }
    if (categories.present) {
      map['categories'] = Variable<String>($ClientConnectionsTable
          .$convertercategoriesn
          .toSql(categories.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientConnectionsCompanion(')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('name: $name, ')
          ..write('walletServiceAccountIndex: $walletServiceAccountIndex, ')
          ..write('walletServicePubkey: $walletServicePubkey, ')
          ..write('relays: $relays, ')
          ..write('clientRelays: $clientRelays, ')
          ..write('budgetRenewal: $budgetRenewal, ')
          ..write('budgetRenewedAt: $budgetRenewedAt, ')
          ..write('maxAmountSat: $maxAmountSat, ')
          ..write('remainingAmountSat: $remainingAmountSat, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('methods: $methods, ')
          ..write('customMethods: $customMethods, ')
          ..write('notifications: $notifications, ')
          ..write('customNotifications: $customNotifications, ')
          ..write('isolated: $isolated, ')
          ..write('isFrozen: $isFrozen, ')
          ..write('categories: $categories, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RequestsTable extends Requests
    with TableInfo<$RequestsTable, RequestTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RequestsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clientPubkeyMeta =
      const VerificationMeta('clientPubkey');
  @override
  late final GeneratedColumn<String> clientPubkey = GeneratedColumn<String>(
      'client_pubkey', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints:
          'NOT NULL REFERENCES client_connections(client_pubkey)');
  static const VerificationMeta _walletServicePubkeyMeta =
      const VerificationMeta('walletServicePubkey');
  @override
  late final GeneratedColumn<String> walletServicePubkey =
      GeneratedColumn<String>('wallet_service_pubkey', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          $customConstraints:
              'NOT NULL REFERENCES client_connections(wallet_service_pubkey)');
  static const VerificationMeta _methodMeta = const VerificationMeta('method');
  @override
  late final GeneratedColumn<String> method = GeneratedColumn<String>(
      'method', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _paramsMeta = const VerificationMeta('params');
  @override
  late final GeneratedColumn<String> params = GeneratedColumn<String>(
      'params', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _expiresAtMeta =
      const VerificationMeta('expiresAt');
  @override
  late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>(
      'expires_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clientPubkey,
        walletServicePubkey,
        method,
        params,
        createdAt,
        expiresAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'requests';
  @override
  VerificationContext validateIntegrity(Insertable<RequestTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('client_pubkey')) {
      context.handle(
          _clientPubkeyMeta,
          clientPubkey.isAcceptableOrUnknown(
              data['client_pubkey']!, _clientPubkeyMeta));
    } else if (isInserting) {
      context.missing(_clientPubkeyMeta);
    }
    if (data.containsKey('wallet_service_pubkey')) {
      context.handle(
          _walletServicePubkeyMeta,
          walletServicePubkey.isAcceptableOrUnknown(
              data['wallet_service_pubkey']!, _walletServicePubkeyMeta));
    } else if (isInserting) {
      context.missing(_walletServicePubkeyMeta);
    }
    if (data.containsKey('method')) {
      context.handle(_methodMeta,
          method.isAcceptableOrUnknown(data['method']!, _methodMeta));
    } else if (isInserting) {
      context.missing(_methodMeta);
    }
    if (data.containsKey('params')) {
      context.handle(_paramsMeta,
          params.isAcceptableOrUnknown(data['params']!, _paramsMeta));
    } else if (isInserting) {
      context.missing(_paramsMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('expires_at')) {
      context.handle(_expiresAtMeta,
          expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RequestTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RequestTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      clientPubkey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_pubkey'])!,
      walletServicePubkey: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}wallet_service_pubkey'])!,
      method: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}method'])!,
      params: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}params'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      expiresAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires_at']),
    );
  }

  @override
  $RequestsTable createAlias(String alias) {
    return $RequestsTable(attachedDatabase, alias);
  }
}

class RequestTable extends DataClass implements Insertable<RequestTable> {
  final String id;
  final String clientPubkey;
  final String walletServicePubkey;
  final String method;
  final String params;
  final DateTime createdAt;
  final DateTime? expiresAt;
  const RequestTable(
      {required this.id,
      required this.clientPubkey,
      required this.walletServicePubkey,
      required this.method,
      required this.params,
      required this.createdAt,
      this.expiresAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['client_pubkey'] = Variable<String>(clientPubkey);
    map['wallet_service_pubkey'] = Variable<String>(walletServicePubkey);
    map['method'] = Variable<String>(method);
    map['params'] = Variable<String>(params);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || expiresAt != null) {
      map['expires_at'] = Variable<DateTime>(expiresAt);
    }
    return map;
  }

  RequestsCompanion toCompanion(bool nullToAbsent) {
    return RequestsCompanion(
      id: Value(id),
      clientPubkey: Value(clientPubkey),
      walletServicePubkey: Value(walletServicePubkey),
      method: Value(method),
      params: Value(params),
      createdAt: Value(createdAt),
      expiresAt: expiresAt == null && nullToAbsent
          ? const Value.absent()
          : Value(expiresAt),
    );
  }

  factory RequestTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RequestTable(
      id: serializer.fromJson<String>(json['id']),
      clientPubkey: serializer.fromJson<String>(json['clientPubkey']),
      walletServicePubkey:
          serializer.fromJson<String>(json['walletServicePubkey']),
      method: serializer.fromJson<String>(json['method']),
      params: serializer.fromJson<String>(json['params']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      expiresAt: serializer.fromJson<DateTime?>(json['expiresAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'clientPubkey': serializer.toJson<String>(clientPubkey),
      'walletServicePubkey': serializer.toJson<String>(walletServicePubkey),
      'method': serializer.toJson<String>(method),
      'params': serializer.toJson<String>(params),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'expiresAt': serializer.toJson<DateTime?>(expiresAt),
    };
  }

  RequestTable copyWith(
          {String? id,
          String? clientPubkey,
          String? walletServicePubkey,
          String? method,
          String? params,
          DateTime? createdAt,
          Value<DateTime?> expiresAt = const Value.absent()}) =>
      RequestTable(
        id: id ?? this.id,
        clientPubkey: clientPubkey ?? this.clientPubkey,
        walletServicePubkey: walletServicePubkey ?? this.walletServicePubkey,
        method: method ?? this.method,
        params: params ?? this.params,
        createdAt: createdAt ?? this.createdAt,
        expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,
      );
  RequestTable copyWithCompanion(RequestsCompanion data) {
    return RequestTable(
      id: data.id.present ? data.id.value : this.id,
      clientPubkey: data.clientPubkey.present
          ? data.clientPubkey.value
          : this.clientPubkey,
      walletServicePubkey: data.walletServicePubkey.present
          ? data.walletServicePubkey.value
          : this.walletServicePubkey,
      method: data.method.present ? data.method.value : this.method,
      params: data.params.present ? data.params.value : this.params,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RequestTable(')
          ..write('id: $id, ')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('walletServicePubkey: $walletServicePubkey, ')
          ..write('method: $method, ')
          ..write('params: $params, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, clientPubkey, walletServicePubkey, method,
      params, createdAt, expiresAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RequestTable &&
          other.id == this.id &&
          other.clientPubkey == this.clientPubkey &&
          other.walletServicePubkey == this.walletServicePubkey &&
          other.method == this.method &&
          other.params == this.params &&
          other.createdAt == this.createdAt &&
          other.expiresAt == this.expiresAt);
}

class RequestsCompanion extends UpdateCompanion<RequestTable> {
  final Value<String> id;
  final Value<String> clientPubkey;
  final Value<String> walletServicePubkey;
  final Value<String> method;
  final Value<String> params;
  final Value<DateTime> createdAt;
  final Value<DateTime?> expiresAt;
  final Value<int> rowid;
  const RequestsCompanion({
    this.id = const Value.absent(),
    this.clientPubkey = const Value.absent(),
    this.walletServicePubkey = const Value.absent(),
    this.method = const Value.absent(),
    this.params = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.expiresAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RequestsCompanion.insert({
    required String id,
    required String clientPubkey,
    required String walletServicePubkey,
    required String method,
    required String params,
    required DateTime createdAt,
    this.expiresAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        clientPubkey = Value(clientPubkey),
        walletServicePubkey = Value(walletServicePubkey),
        method = Value(method),
        params = Value(params),
        createdAt = Value(createdAt);
  static Insertable<RequestTable> custom({
    Expression<String>? id,
    Expression<String>? clientPubkey,
    Expression<String>? walletServicePubkey,
    Expression<String>? method,
    Expression<String>? params,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? expiresAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientPubkey != null) 'client_pubkey': clientPubkey,
      if (walletServicePubkey != null)
        'wallet_service_pubkey': walletServicePubkey,
      if (method != null) 'method': method,
      if (params != null) 'params': params,
      if (createdAt != null) 'created_at': createdAt,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RequestsCompanion copyWith(
      {Value<String>? id,
      Value<String>? clientPubkey,
      Value<String>? walletServicePubkey,
      Value<String>? method,
      Value<String>? params,
      Value<DateTime>? createdAt,
      Value<DateTime?>? expiresAt,
      Value<int>? rowid}) {
    return RequestsCompanion(
      id: id ?? this.id,
      clientPubkey: clientPubkey ?? this.clientPubkey,
      walletServicePubkey: walletServicePubkey ?? this.walletServicePubkey,
      method: method ?? this.method,
      params: params ?? this.params,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (clientPubkey.present) {
      map['client_pubkey'] = Variable<String>(clientPubkey.value);
    }
    if (walletServicePubkey.present) {
      map['wallet_service_pubkey'] =
          Variable<String>(walletServicePubkey.value);
    }
    if (method.present) {
      map['method'] = Variable<String>(method.value);
    }
    if (params.present) {
      map['params'] = Variable<String>(params.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (expiresAt.present) {
      map['expires_at'] = Variable<DateTime>(expiresAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RequestsCompanion(')
          ..write('id: $id, ')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('walletServicePubkey: $walletServicePubkey, ')
          ..write('method: $method, ')
          ..write('params: $params, ')
          ..write('createdAt: $createdAt, ')
          ..write('expiresAt: $expiresAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ResponsesTable extends Responses
    with TableInfo<$ResponsesTable, ResponseTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResponsesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _requestIdMeta =
      const VerificationMeta('requestId');
  @override
  late final GeneratedColumn<String> requestId = GeneratedColumn<String>(
      'request_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES requests(id)');
  static const VerificationMeta _resultMeta = const VerificationMeta('result');
  @override
  late final GeneratedColumn<String> result = GeneratedColumn<String>(
      'result', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _errorCodeMeta =
      const VerificationMeta('errorCode');
  @override
  late final GeneratedColumn<String> errorCode = GeneratedColumn<String>(
      'error_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _errorMessageMeta =
      const VerificationMeta('errorMessage');
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
      'error_message', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _multiIdMeta =
      const VerificationMeta('multiId');
  @override
  late final GeneratedColumn<String> multiId = GeneratedColumn<String>(
      'multi_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, requestId, result, errorCode, errorMessage, multiId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'responses';
  @override
  VerificationContext validateIntegrity(Insertable<ResponseTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('request_id')) {
      context.handle(_requestIdMeta,
          requestId.isAcceptableOrUnknown(data['request_id']!, _requestIdMeta));
    } else if (isInserting) {
      context.missing(_requestIdMeta);
    }
    if (data.containsKey('result')) {
      context.handle(_resultMeta,
          result.isAcceptableOrUnknown(data['result']!, _resultMeta));
    }
    if (data.containsKey('error_code')) {
      context.handle(_errorCodeMeta,
          errorCode.isAcceptableOrUnknown(data['error_code']!, _errorCodeMeta));
    }
    if (data.containsKey('error_message')) {
      context.handle(
          _errorMessageMeta,
          errorMessage.isAcceptableOrUnknown(
              data['error_message']!, _errorMessageMeta));
    }
    if (data.containsKey('multi_id')) {
      context.handle(_multiIdMeta,
          multiId.isAcceptableOrUnknown(data['multi_id']!, _multiIdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResponseTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResponseTable(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      requestId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}request_id'])!,
      result: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}result']),
      errorCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_code']),
      errorMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_message']),
      multiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}multi_id']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $ResponsesTable createAlias(String alias) {
    return $ResponsesTable(attachedDatabase, alias);
  }
}

class ResponseTable extends DataClass implements Insertable<ResponseTable> {
  final String id;
  final String requestId;
  final String? result;
  final String? errorCode;
  final String? errorMessage;
  final String? multiId;
  final DateTime? createdAt;
  const ResponseTable(
      {required this.id,
      required this.requestId,
      this.result,
      this.errorCode,
      this.errorMessage,
      this.multiId,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['request_id'] = Variable<String>(requestId);
    if (!nullToAbsent || result != null) {
      map['result'] = Variable<String>(result);
    }
    if (!nullToAbsent || errorCode != null) {
      map['error_code'] = Variable<String>(errorCode);
    }
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    if (!nullToAbsent || multiId != null) {
      map['multi_id'] = Variable<String>(multiId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  ResponsesCompanion toCompanion(bool nullToAbsent) {
    return ResponsesCompanion(
      id: Value(id),
      requestId: Value(requestId),
      result:
          result == null && nullToAbsent ? const Value.absent() : Value(result),
      errorCode: errorCode == null && nullToAbsent
          ? const Value.absent()
          : Value(errorCode),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
      multiId: multiId == null && nullToAbsent
          ? const Value.absent()
          : Value(multiId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory ResponseTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResponseTable(
      id: serializer.fromJson<String>(json['id']),
      requestId: serializer.fromJson<String>(json['requestId']),
      result: serializer.fromJson<String?>(json['result']),
      errorCode: serializer.fromJson<String?>(json['errorCode']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
      multiId: serializer.fromJson<String?>(json['multiId']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'requestId': serializer.toJson<String>(requestId),
      'result': serializer.toJson<String?>(result),
      'errorCode': serializer.toJson<String?>(errorCode),
      'errorMessage': serializer.toJson<String?>(errorMessage),
      'multiId': serializer.toJson<String?>(multiId),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  ResponseTable copyWith(
          {String? id,
          String? requestId,
          Value<String?> result = const Value.absent(),
          Value<String?> errorCode = const Value.absent(),
          Value<String?> errorMessage = const Value.absent(),
          Value<String?> multiId = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent()}) =>
      ResponseTable(
        id: id ?? this.id,
        requestId: requestId ?? this.requestId,
        result: result.present ? result.value : this.result,
        errorCode: errorCode.present ? errorCode.value : this.errorCode,
        errorMessage:
            errorMessage.present ? errorMessage.value : this.errorMessage,
        multiId: multiId.present ? multiId.value : this.multiId,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  ResponseTable copyWithCompanion(ResponsesCompanion data) {
    return ResponseTable(
      id: data.id.present ? data.id.value : this.id,
      requestId: data.requestId.present ? data.requestId.value : this.requestId,
      result: data.result.present ? data.result.value : this.result,
      errorCode: data.errorCode.present ? data.errorCode.value : this.errorCode,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
      multiId: data.multiId.present ? data.multiId.value : this.multiId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResponseTable(')
          ..write('id: $id, ')
          ..write('requestId: $requestId, ')
          ..write('result: $result, ')
          ..write('errorCode: $errorCode, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('multiId: $multiId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, requestId, result, errorCode, errorMessage, multiId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResponseTable &&
          other.id == this.id &&
          other.requestId == this.requestId &&
          other.result == this.result &&
          other.errorCode == this.errorCode &&
          other.errorMessage == this.errorMessage &&
          other.multiId == this.multiId &&
          other.createdAt == this.createdAt);
}

class ResponsesCompanion extends UpdateCompanion<ResponseTable> {
  final Value<String> id;
  final Value<String> requestId;
  final Value<String?> result;
  final Value<String?> errorCode;
  final Value<String?> errorMessage;
  final Value<String?> multiId;
  final Value<DateTime?> createdAt;
  final Value<int> rowid;
  const ResponsesCompanion({
    this.id = const Value.absent(),
    this.requestId = const Value.absent(),
    this.result = const Value.absent(),
    this.errorCode = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.multiId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResponsesCompanion.insert({
    required String id,
    required String requestId,
    this.result = const Value.absent(),
    this.errorCode = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.multiId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        requestId = Value(requestId);
  static Insertable<ResponseTable> custom({
    Expression<String>? id,
    Expression<String>? requestId,
    Expression<String>? result,
    Expression<String>? errorCode,
    Expression<String>? errorMessage,
    Expression<String>? multiId,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (requestId != null) 'request_id': requestId,
      if (result != null) 'result': result,
      if (errorCode != null) 'error_code': errorCode,
      if (errorMessage != null) 'error_message': errorMessage,
      if (multiId != null) 'multi_id': multiId,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResponsesCompanion copyWith(
      {Value<String>? id,
      Value<String>? requestId,
      Value<String?>? result,
      Value<String?>? errorCode,
      Value<String?>? errorMessage,
      Value<String?>? multiId,
      Value<DateTime?>? createdAt,
      Value<int>? rowid}) {
    return ResponsesCompanion(
      id: id ?? this.id,
      requestId: requestId ?? this.requestId,
      result: result ?? this.result,
      errorCode: errorCode ?? this.errorCode,
      errorMessage: errorMessage ?? this.errorMessage,
      multiId: multiId ?? this.multiId,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (requestId.present) {
      map['request_id'] = Variable<String>(requestId.value);
    }
    if (result.present) {
      map['result'] = Variable<String>(result.value);
    }
    if (errorCode.present) {
      map['error_code'] = Variable<String>(errorCode.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (multiId.present) {
      map['multi_id'] = Variable<String>(multiId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResponsesCompanion(')
          ..write('id: $id, ')
          ..write('requestId: $requestId, ')
          ..write('result: $result, ')
          ..write('errorCode: $errorCode, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('multiId: $multiId, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Nip47Database extends GeneratedDatabase {
  _$Nip47Database(QueryExecutor e) : super(e);
  $Nip47DatabaseManager get managers => $Nip47DatabaseManager(this);
  late final $ClientConnectionsTable clientConnections =
      $ClientConnectionsTable(this);
  late final $RequestsTable requests = $RequestsTable(this);
  late final $ResponsesTable responses = $ResponsesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [clientConnections, requests, responses];
}

typedef $$ClientConnectionsTableCreateCompanionBuilder
    = ClientConnectionsCompanion Function({
  required String clientPubkey,
  required String name,
  required int walletServiceAccountIndex,
  required String walletServicePubkey,
  required List<String> relays,
  Value<List<String>?> clientRelays,
  required String budgetRenewal,
  required int budgetRenewedAt,
  Value<int?> maxAmountSat,
  Value<int?> remainingAmountSat,
  Value<int?> expiresAt,
  Value<List<String>?> methods,
  Value<List<String>?> customMethods,
  Value<List<String>?> notifications,
  Value<List<String>?> customNotifications,
  required bool isolated,
  required bool isFrozen,
  Value<List<String>?> categories,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$ClientConnectionsTableUpdateCompanionBuilder
    = ClientConnectionsCompanion Function({
  Value<String> clientPubkey,
  Value<String> name,
  Value<int> walletServiceAccountIndex,
  Value<String> walletServicePubkey,
  Value<List<String>> relays,
  Value<List<String>?> clientRelays,
  Value<String> budgetRenewal,
  Value<int> budgetRenewedAt,
  Value<int?> maxAmountSat,
  Value<int?> remainingAmountSat,
  Value<int?> expiresAt,
  Value<List<String>?> methods,
  Value<List<String>?> customMethods,
  Value<List<String>?> notifications,
  Value<List<String>?> customNotifications,
  Value<bool> isolated,
  Value<bool> isFrozen,
  Value<List<String>?> categories,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$ClientConnectionsTableFilterComposer
    extends Composer<_$Nip47Database, $ClientConnectionsTable> {
  $$ClientConnectionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get walletServiceAccountIndex => $composableBuilder(
      column: $table.walletServiceAccountIndex,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get relays => $composableBuilder(
          column: $table.relays,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get clientRelays => $composableBuilder(
          column: $table.clientRelays,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get budgetRenewal => $composableBuilder(
      column: $table.budgetRenewal, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get budgetRenewedAt => $composableBuilder(
      column: $table.budgetRenewedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxAmountSat => $composableBuilder(
      column: $table.maxAmountSat, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get remainingAmountSat => $composableBuilder(
      column: $table.remainingAmountSat,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get methods => $composableBuilder(
          column: $table.methods,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get customMethods => $composableBuilder(
          column: $table.customMethods,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get notifications => $composableBuilder(
          column: $table.notifications,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get customNotifications => $composableBuilder(
          column: $table.customNotifications,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isolated => $composableBuilder(
      column: $table.isolated, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFrozen => $composableBuilder(
      column: $table.isFrozen, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get categories => $composableBuilder(
          column: $table.categories,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ClientConnectionsTableOrderingComposer
    extends Composer<_$Nip47Database, $ClientConnectionsTable> {
  $$ClientConnectionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get walletServiceAccountIndex => $composableBuilder(
      column: $table.walletServiceAccountIndex,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get relays => $composableBuilder(
      column: $table.relays, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get clientRelays => $composableBuilder(
      column: $table.clientRelays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get budgetRenewal => $composableBuilder(
      column: $table.budgetRenewal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get budgetRenewedAt => $composableBuilder(
      column: $table.budgetRenewedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxAmountSat => $composableBuilder(
      column: $table.maxAmountSat,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get remainingAmountSat => $composableBuilder(
      column: $table.remainingAmountSat,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get methods => $composableBuilder(
      column: $table.methods, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customMethods => $composableBuilder(
      column: $table.customMethods,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notifications => $composableBuilder(
      column: $table.notifications,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customNotifications => $composableBuilder(
      column: $table.customNotifications,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isolated => $composableBuilder(
      column: $table.isolated, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFrozen => $composableBuilder(
      column: $table.isFrozen, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categories => $composableBuilder(
      column: $table.categories, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ClientConnectionsTableAnnotationComposer
    extends Composer<_$Nip47Database, $ClientConnectionsTable> {
  $$ClientConnectionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get walletServiceAccountIndex => $composableBuilder(
      column: $table.walletServiceAccountIndex, builder: (column) => column);

  GeneratedColumn<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get relays =>
      $composableBuilder(column: $table.relays, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get clientRelays =>
      $composableBuilder(
          column: $table.clientRelays, builder: (column) => column);

  GeneratedColumn<String> get budgetRenewal => $composableBuilder(
      column: $table.budgetRenewal, builder: (column) => column);

  GeneratedColumn<int> get budgetRenewedAt => $composableBuilder(
      column: $table.budgetRenewedAt, builder: (column) => column);

  GeneratedColumn<int> get maxAmountSat => $composableBuilder(
      column: $table.maxAmountSat, builder: (column) => column);

  GeneratedColumn<int> get remainingAmountSat => $composableBuilder(
      column: $table.remainingAmountSat, builder: (column) => column);

  GeneratedColumn<int> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get methods =>
      $composableBuilder(column: $table.methods, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get customMethods =>
      $composableBuilder(
          column: $table.customMethods, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get notifications =>
      $composableBuilder(
          column: $table.notifications, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String>
      get customNotifications => $composableBuilder(
          column: $table.customNotifications, builder: (column) => column);

  GeneratedColumn<bool> get isolated =>
      $composableBuilder(column: $table.isolated, builder: (column) => column);

  GeneratedColumn<bool> get isFrozen =>
      $composableBuilder(column: $table.isFrozen, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get categories =>
      $composableBuilder(
          column: $table.categories, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ClientConnectionsTableTableManager extends RootTableManager<
    _$Nip47Database,
    $ClientConnectionsTable,
    ClientConnectionTable,
    $$ClientConnectionsTableFilterComposer,
    $$ClientConnectionsTableOrderingComposer,
    $$ClientConnectionsTableAnnotationComposer,
    $$ClientConnectionsTableCreateCompanionBuilder,
    $$ClientConnectionsTableUpdateCompanionBuilder,
    (
      ClientConnectionTable,
      BaseReferences<_$Nip47Database, $ClientConnectionsTable,
          ClientConnectionTable>
    ),
    ClientConnectionTable,
    PrefetchHooks Function()> {
  $$ClientConnectionsTableTableManager(
      _$Nip47Database db, $ClientConnectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientConnectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientConnectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientConnectionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> clientPubkey = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> walletServiceAccountIndex = const Value.absent(),
            Value<String> walletServicePubkey = const Value.absent(),
            Value<List<String>> relays = const Value.absent(),
            Value<List<String>?> clientRelays = const Value.absent(),
            Value<String> budgetRenewal = const Value.absent(),
            Value<int> budgetRenewedAt = const Value.absent(),
            Value<int?> maxAmountSat = const Value.absent(),
            Value<int?> remainingAmountSat = const Value.absent(),
            Value<int?> expiresAt = const Value.absent(),
            Value<List<String>?> methods = const Value.absent(),
            Value<List<String>?> customMethods = const Value.absent(),
            Value<List<String>?> notifications = const Value.absent(),
            Value<List<String>?> customNotifications = const Value.absent(),
            Value<bool> isolated = const Value.absent(),
            Value<bool> isFrozen = const Value.absent(),
            Value<List<String>?> categories = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClientConnectionsCompanion(
            clientPubkey: clientPubkey,
            name: name,
            walletServiceAccountIndex: walletServiceAccountIndex,
            walletServicePubkey: walletServicePubkey,
            relays: relays,
            clientRelays: clientRelays,
            budgetRenewal: budgetRenewal,
            budgetRenewedAt: budgetRenewedAt,
            maxAmountSat: maxAmountSat,
            remainingAmountSat: remainingAmountSat,
            expiresAt: expiresAt,
            methods: methods,
            customMethods: customMethods,
            notifications: notifications,
            customNotifications: customNotifications,
            isolated: isolated,
            isFrozen: isFrozen,
            categories: categories,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String clientPubkey,
            required String name,
            required int walletServiceAccountIndex,
            required String walletServicePubkey,
            required List<String> relays,
            Value<List<String>?> clientRelays = const Value.absent(),
            required String budgetRenewal,
            required int budgetRenewedAt,
            Value<int?> maxAmountSat = const Value.absent(),
            Value<int?> remainingAmountSat = const Value.absent(),
            Value<int?> expiresAt = const Value.absent(),
            Value<List<String>?> methods = const Value.absent(),
            Value<List<String>?> customMethods = const Value.absent(),
            Value<List<String>?> notifications = const Value.absent(),
            Value<List<String>?> customNotifications = const Value.absent(),
            required bool isolated,
            required bool isFrozen,
            Value<List<String>?> categories = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ClientConnectionsCompanion.insert(
            clientPubkey: clientPubkey,
            name: name,
            walletServiceAccountIndex: walletServiceAccountIndex,
            walletServicePubkey: walletServicePubkey,
            relays: relays,
            clientRelays: clientRelays,
            budgetRenewal: budgetRenewal,
            budgetRenewedAt: budgetRenewedAt,
            maxAmountSat: maxAmountSat,
            remainingAmountSat: remainingAmountSat,
            expiresAt: expiresAt,
            methods: methods,
            customMethods: customMethods,
            notifications: notifications,
            customNotifications: customNotifications,
            isolated: isolated,
            isFrozen: isFrozen,
            categories: categories,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClientConnectionsTableProcessedTableManager = ProcessedTableManager<
    _$Nip47Database,
    $ClientConnectionsTable,
    ClientConnectionTable,
    $$ClientConnectionsTableFilterComposer,
    $$ClientConnectionsTableOrderingComposer,
    $$ClientConnectionsTableAnnotationComposer,
    $$ClientConnectionsTableCreateCompanionBuilder,
    $$ClientConnectionsTableUpdateCompanionBuilder,
    (
      ClientConnectionTable,
      BaseReferences<_$Nip47Database, $ClientConnectionsTable,
          ClientConnectionTable>
    ),
    ClientConnectionTable,
    PrefetchHooks Function()>;
typedef $$RequestsTableCreateCompanionBuilder = RequestsCompanion Function({
  required String id,
  required String clientPubkey,
  required String walletServicePubkey,
  required String method,
  required String params,
  required DateTime createdAt,
  Value<DateTime?> expiresAt,
  Value<int> rowid,
});
typedef $$RequestsTableUpdateCompanionBuilder = RequestsCompanion Function({
  Value<String> id,
  Value<String> clientPubkey,
  Value<String> walletServicePubkey,
  Value<String> method,
  Value<String> params,
  Value<DateTime> createdAt,
  Value<DateTime?> expiresAt,
  Value<int> rowid,
});

class $$RequestsTableFilterComposer
    extends Composer<_$Nip47Database, $RequestsTable> {
  $$RequestsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get params => $composableBuilder(
      column: $table.params, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnFilters(column));
}

class $$RequestsTableOrderingComposer
    extends Composer<_$Nip47Database, $RequestsTable> {
  $$RequestsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get params => $composableBuilder(
      column: $table.params, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));
}

class $$RequestsTableAnnotationComposer
    extends Composer<_$Nip47Database, $RequestsTable> {
  $$RequestsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get clientPubkey => $composableBuilder(
      column: $table.clientPubkey, builder: (column) => column);

  GeneratedColumn<String> get walletServicePubkey => $composableBuilder(
      column: $table.walletServicePubkey, builder: (column) => column);

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<String> get params =>
      $composableBuilder(column: $table.params, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);
}

class $$RequestsTableTableManager extends RootTableManager<
    _$Nip47Database,
    $RequestsTable,
    RequestTable,
    $$RequestsTableFilterComposer,
    $$RequestsTableOrderingComposer,
    $$RequestsTableAnnotationComposer,
    $$RequestsTableCreateCompanionBuilder,
    $$RequestsTableUpdateCompanionBuilder,
    (
      RequestTable,
      BaseReferences<_$Nip47Database, $RequestsTable, RequestTable>
    ),
    RequestTable,
    PrefetchHooks Function()> {
  $$RequestsTableTableManager(_$Nip47Database db, $RequestsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RequestsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RequestsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RequestsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> clientPubkey = const Value.absent(),
            Value<String> walletServicePubkey = const Value.absent(),
            Value<String> method = const Value.absent(),
            Value<String> params = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> expiresAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RequestsCompanion(
            id: id,
            clientPubkey: clientPubkey,
            walletServicePubkey: walletServicePubkey,
            method: method,
            params: params,
            createdAt: createdAt,
            expiresAt: expiresAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String clientPubkey,
            required String walletServicePubkey,
            required String method,
            required String params,
            required DateTime createdAt,
            Value<DateTime?> expiresAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RequestsCompanion.insert(
            id: id,
            clientPubkey: clientPubkey,
            walletServicePubkey: walletServicePubkey,
            method: method,
            params: params,
            createdAt: createdAt,
            expiresAt: expiresAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RequestsTableProcessedTableManager = ProcessedTableManager<
    _$Nip47Database,
    $RequestsTable,
    RequestTable,
    $$RequestsTableFilterComposer,
    $$RequestsTableOrderingComposer,
    $$RequestsTableAnnotationComposer,
    $$RequestsTableCreateCompanionBuilder,
    $$RequestsTableUpdateCompanionBuilder,
    (
      RequestTable,
      BaseReferences<_$Nip47Database, $RequestsTable, RequestTable>
    ),
    RequestTable,
    PrefetchHooks Function()>;
typedef $$ResponsesTableCreateCompanionBuilder = ResponsesCompanion Function({
  required String id,
  required String requestId,
  Value<String?> result,
  Value<String?> errorCode,
  Value<String?> errorMessage,
  Value<String?> multiId,
  Value<DateTime?> createdAt,
  Value<int> rowid,
});
typedef $$ResponsesTableUpdateCompanionBuilder = ResponsesCompanion Function({
  Value<String> id,
  Value<String> requestId,
  Value<String?> result,
  Value<String?> errorCode,
  Value<String?> errorMessage,
  Value<String?> multiId,
  Value<DateTime?> createdAt,
  Value<int> rowid,
});

class $$ResponsesTableFilterComposer
    extends Composer<_$Nip47Database, $ResponsesTable> {
  $$ResponsesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get requestId => $composableBuilder(
      column: $table.requestId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get result => $composableBuilder(
      column: $table.result, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorCode => $composableBuilder(
      column: $table.errorCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get multiId => $composableBuilder(
      column: $table.multiId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ResponsesTableOrderingComposer
    extends Composer<_$Nip47Database, $ResponsesTable> {
  $$ResponsesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get requestId => $composableBuilder(
      column: $table.requestId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get result => $composableBuilder(
      column: $table.result, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorCode => $composableBuilder(
      column: $table.errorCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get multiId => $composableBuilder(
      column: $table.multiId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ResponsesTableAnnotationComposer
    extends Composer<_$Nip47Database, $ResponsesTable> {
  $$ResponsesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get requestId =>
      $composableBuilder(column: $table.requestId, builder: (column) => column);

  GeneratedColumn<String> get result =>
      $composableBuilder(column: $table.result, builder: (column) => column);

  GeneratedColumn<String> get errorCode =>
      $composableBuilder(column: $table.errorCode, builder: (column) => column);

  GeneratedColumn<String> get errorMessage => $composableBuilder(
      column: $table.errorMessage, builder: (column) => column);

  GeneratedColumn<String> get multiId =>
      $composableBuilder(column: $table.multiId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ResponsesTableTableManager extends RootTableManager<
    _$Nip47Database,
    $ResponsesTable,
    ResponseTable,
    $$ResponsesTableFilterComposer,
    $$ResponsesTableOrderingComposer,
    $$ResponsesTableAnnotationComposer,
    $$ResponsesTableCreateCompanionBuilder,
    $$ResponsesTableUpdateCompanionBuilder,
    (
      ResponseTable,
      BaseReferences<_$Nip47Database, $ResponsesTable, ResponseTable>
    ),
    ResponseTable,
    PrefetchHooks Function()> {
  $$ResponsesTableTableManager(_$Nip47Database db, $ResponsesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResponsesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResponsesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResponsesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> requestId = const Value.absent(),
            Value<String?> result = const Value.absent(),
            Value<String?> errorCode = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<String?> multiId = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsesCompanion(
            id: id,
            requestId: requestId,
            result: result,
            errorCode: errorCode,
            errorMessage: errorMessage,
            multiId: multiId,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String requestId,
            Value<String?> result = const Value.absent(),
            Value<String?> errorCode = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<String?> multiId = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsesCompanion.insert(
            id: id,
            requestId: requestId,
            result: result,
            errorCode: errorCode,
            errorMessage: errorMessage,
            multiId: multiId,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResponsesTableProcessedTableManager = ProcessedTableManager<
    _$Nip47Database,
    $ResponsesTable,
    ResponseTable,
    $$ResponsesTableFilterComposer,
    $$ResponsesTableOrderingComposer,
    $$ResponsesTableAnnotationComposer,
    $$ResponsesTableCreateCompanionBuilder,
    $$ResponsesTableUpdateCompanionBuilder,
    (
      ResponseTable,
      BaseReferences<_$Nip47Database, $ResponsesTable, ResponseTable>
    ),
    ResponseTable,
    PrefetchHooks Function()>;

class $Nip47DatabaseManager {
  final _$Nip47Database _db;
  $Nip47DatabaseManager(this._db);
  $$ClientConnectionsTableTableManager get clientConnections =>
      $$ClientConnectionsTableTableManager(_db, _db.clientConnections);
  $$RequestsTableTableManager get requests =>
      $$RequestsTableTableManager(_db, _db.requests);
  $$ResponsesTableTableManager get responses =>
      $$ResponsesTableTableManager(_db, _db.responses);
}
