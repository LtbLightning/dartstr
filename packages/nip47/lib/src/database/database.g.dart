// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WalletConnectionsTable extends WalletConnections
    with TableInfo<$WalletConnectionsTable, WalletConnectionTable> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletConnectionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _clientPubkeyMeta =
      const VerificationMeta('clientPubkey');
  @override
  late final GeneratedColumn<String> clientPubkey = GeneratedColumn<String>(
      'client_pubkey', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
              $WalletConnectionsTable.$converterrelays);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      clientRelays = GeneratedColumn<String>('client_relays', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $WalletConnectionsTable.$converterclientRelaysn);
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
      'budget_renewed_at', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
              $WalletConnectionsTable.$convertermethodsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      customMethods = GeneratedColumn<String>(
              'custom_methods', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $WalletConnectionsTable.$convertercustomMethodsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      notifications = GeneratedColumn<String>(
              'notifications', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $WalletConnectionsTable.$converternotificationsn);
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      customNotifications = GeneratedColumn<String>(
              'custom_notifications', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $WalletConnectionsTable.$convertercustomNotificationsn);
  static const VerificationMeta _isolatedMeta =
      const VerificationMeta('isolated');
  @override
  late final GeneratedColumn<bool> isolated = GeneratedColumn<bool>(
      'isolated', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isolated" IN (0, 1))'));
  static const VerificationMeta _isFrozenMeta =
      const VerificationMeta('isFrozen');
  @override
  late final GeneratedColumn<bool> isFrozen = GeneratedColumn<bool>(
      'is_frozen', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_frozen" IN (0, 1))'));
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String>
      categories = GeneratedColumn<String>('categories', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $WalletConnectionsTable.$convertercategoriesn);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lud16Meta = const VerificationMeta('lud16');
  @override
  late final GeneratedColumn<String> lud16 = GeneratedColumn<String>(
      'lud16', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        clientPubkey,
        name,
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
        createdAt,
        lud16
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallet_connections';
  @override
  VerificationContext validateIntegrity(
      Insertable<WalletConnectionTable> instance,
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
    }
    if (data.containsKey('is_frozen')) {
      context.handle(_isFrozenMeta,
          isFrozen.isAcceptableOrUnknown(data['is_frozen']!, _isFrozenMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('lud16')) {
      context.handle(
          _lud16Meta, lud16.isAcceptableOrUnknown(data['lud16']!, _lud16Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientPubkey};
  @override
  WalletConnectionTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletConnectionTable(
      clientPubkey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}client_pubkey'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      walletServicePubkey: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}wallet_service_pubkey'])!,
      relays: $WalletConnectionsTable.$converterrelays.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}relays'])!),
      clientRelays: $WalletConnectionsTable.$converterclientRelaysn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}client_relays'])),
      budgetRenewal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}budget_renewal'])!,
      budgetRenewedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}budget_renewed_at']),
      maxAmountSat: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_amount_sat']),
      remainingAmountSat: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}remaining_amount_sat']),
      expiresAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}expires_at']),
      methods: $WalletConnectionsTable.$convertermethodsn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}methods'])),
      customMethods: $WalletConnectionsTable.$convertercustomMethodsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}custom_methods'])),
      notifications: $WalletConnectionsTable.$converternotificationsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}notifications'])),
      customNotifications: $WalletConnectionsTable
          .$convertercustomNotificationsn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}custom_notifications'])),
      isolated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isolated']),
      isFrozen: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_frozen']),
      categories: $WalletConnectionsTable.$convertercategoriesn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}categories'])),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      lud16: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lud16']),
    );
  }

  @override
  $WalletConnectionsTable createAlias(String alias) {
    return $WalletConnectionsTable(attachedDatabase, alias);
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

class WalletConnectionTable extends DataClass
    implements Insertable<WalletConnectionTable> {
  final String clientPubkey;
  final String? name;
  final String walletServicePubkey;
  final List<String> relays;
  final List<String>? clientRelays;
  final String budgetRenewal;
  final int? budgetRenewedAt;
  final int? maxAmountSat;
  final int? remainingAmountSat;
  final int? expiresAt;
  final List<String>? methods;
  final List<String>? customMethods;
  final List<String>? notifications;
  final List<String>? customNotifications;
  final bool? isolated;
  final bool? isFrozen;
  final List<String>? categories;
  final DateTime createdAt;
  final String? lud16;
  const WalletConnectionTable(
      {required this.clientPubkey,
      this.name,
      required this.walletServicePubkey,
      required this.relays,
      this.clientRelays,
      required this.budgetRenewal,
      this.budgetRenewedAt,
      this.maxAmountSat,
      this.remainingAmountSat,
      this.expiresAt,
      this.methods,
      this.customMethods,
      this.notifications,
      this.customNotifications,
      this.isolated,
      this.isFrozen,
      this.categories,
      required this.createdAt,
      this.lud16});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_pubkey'] = Variable<String>(clientPubkey);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['wallet_service_pubkey'] = Variable<String>(walletServicePubkey);
    {
      map['relays'] = Variable<String>(
          $WalletConnectionsTable.$converterrelays.toSql(relays));
    }
    if (!nullToAbsent || clientRelays != null) {
      map['client_relays'] = Variable<String>(
          $WalletConnectionsTable.$converterclientRelaysn.toSql(clientRelays));
    }
    map['budget_renewal'] = Variable<String>(budgetRenewal);
    if (!nullToAbsent || budgetRenewedAt != null) {
      map['budget_renewed_at'] = Variable<int>(budgetRenewedAt);
    }
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
          $WalletConnectionsTable.$convertermethodsn.toSql(methods));
    }
    if (!nullToAbsent || customMethods != null) {
      map['custom_methods'] = Variable<String>($WalletConnectionsTable
          .$convertercustomMethodsn
          .toSql(customMethods));
    }
    if (!nullToAbsent || notifications != null) {
      map['notifications'] = Variable<String>($WalletConnectionsTable
          .$converternotificationsn
          .toSql(notifications));
    }
    if (!nullToAbsent || customNotifications != null) {
      map['custom_notifications'] = Variable<String>($WalletConnectionsTable
          .$convertercustomNotificationsn
          .toSql(customNotifications));
    }
    if (!nullToAbsent || isolated != null) {
      map['isolated'] = Variable<bool>(isolated);
    }
    if (!nullToAbsent || isFrozen != null) {
      map['is_frozen'] = Variable<bool>(isFrozen);
    }
    if (!nullToAbsent || categories != null) {
      map['categories'] = Variable<String>(
          $WalletConnectionsTable.$convertercategoriesn.toSql(categories));
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || lud16 != null) {
      map['lud16'] = Variable<String>(lud16);
    }
    return map;
  }

  WalletConnectionsCompanion toCompanion(bool nullToAbsent) {
    return WalletConnectionsCompanion(
      clientPubkey: Value(clientPubkey),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      walletServicePubkey: Value(walletServicePubkey),
      relays: Value(relays),
      clientRelays: clientRelays == null && nullToAbsent
          ? const Value.absent()
          : Value(clientRelays),
      budgetRenewal: Value(budgetRenewal),
      budgetRenewedAt: budgetRenewedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(budgetRenewedAt),
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
      isolated: isolated == null && nullToAbsent
          ? const Value.absent()
          : Value(isolated),
      isFrozen: isFrozen == null && nullToAbsent
          ? const Value.absent()
          : Value(isFrozen),
      categories: categories == null && nullToAbsent
          ? const Value.absent()
          : Value(categories),
      createdAt: Value(createdAt),
      lud16:
          lud16 == null && nullToAbsent ? const Value.absent() : Value(lud16),
    );
  }

  factory WalletConnectionTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletConnectionTable(
      clientPubkey: serializer.fromJson<String>(json['clientPubkey']),
      name: serializer.fromJson<String?>(json['name']),
      walletServicePubkey:
          serializer.fromJson<String>(json['walletServicePubkey']),
      relays: serializer.fromJson<List<String>>(json['relays']),
      clientRelays: serializer.fromJson<List<String>?>(json['clientRelays']),
      budgetRenewal: serializer.fromJson<String>(json['budgetRenewal']),
      budgetRenewedAt: serializer.fromJson<int?>(json['budgetRenewedAt']),
      maxAmountSat: serializer.fromJson<int?>(json['maxAmountSat']),
      remainingAmountSat: serializer.fromJson<int?>(json['remainingAmountSat']),
      expiresAt: serializer.fromJson<int?>(json['expiresAt']),
      methods: serializer.fromJson<List<String>?>(json['methods']),
      customMethods: serializer.fromJson<List<String>?>(json['customMethods']),
      notifications: serializer.fromJson<List<String>?>(json['notifications']),
      customNotifications:
          serializer.fromJson<List<String>?>(json['customNotifications']),
      isolated: serializer.fromJson<bool?>(json['isolated']),
      isFrozen: serializer.fromJson<bool?>(json['isFrozen']),
      categories: serializer.fromJson<List<String>?>(json['categories']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lud16: serializer.fromJson<String?>(json['lud16']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientPubkey': serializer.toJson<String>(clientPubkey),
      'name': serializer.toJson<String?>(name),
      'walletServicePubkey': serializer.toJson<String>(walletServicePubkey),
      'relays': serializer.toJson<List<String>>(relays),
      'clientRelays': serializer.toJson<List<String>?>(clientRelays),
      'budgetRenewal': serializer.toJson<String>(budgetRenewal),
      'budgetRenewedAt': serializer.toJson<int?>(budgetRenewedAt),
      'maxAmountSat': serializer.toJson<int?>(maxAmountSat),
      'remainingAmountSat': serializer.toJson<int?>(remainingAmountSat),
      'expiresAt': serializer.toJson<int?>(expiresAt),
      'methods': serializer.toJson<List<String>?>(methods),
      'customMethods': serializer.toJson<List<String>?>(customMethods),
      'notifications': serializer.toJson<List<String>?>(notifications),
      'customNotifications':
          serializer.toJson<List<String>?>(customNotifications),
      'isolated': serializer.toJson<bool?>(isolated),
      'isFrozen': serializer.toJson<bool?>(isFrozen),
      'categories': serializer.toJson<List<String>?>(categories),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lud16': serializer.toJson<String?>(lud16),
    };
  }

  WalletConnectionTable copyWith(
          {String? clientPubkey,
          Value<String?> name = const Value.absent(),
          String? walletServicePubkey,
          List<String>? relays,
          Value<List<String>?> clientRelays = const Value.absent(),
          String? budgetRenewal,
          Value<int?> budgetRenewedAt = const Value.absent(),
          Value<int?> maxAmountSat = const Value.absent(),
          Value<int?> remainingAmountSat = const Value.absent(),
          Value<int?> expiresAt = const Value.absent(),
          Value<List<String>?> methods = const Value.absent(),
          Value<List<String>?> customMethods = const Value.absent(),
          Value<List<String>?> notifications = const Value.absent(),
          Value<List<String>?> customNotifications = const Value.absent(),
          Value<bool?> isolated = const Value.absent(),
          Value<bool?> isFrozen = const Value.absent(),
          Value<List<String>?> categories = const Value.absent(),
          DateTime? createdAt,
          Value<String?> lud16 = const Value.absent()}) =>
      WalletConnectionTable(
        clientPubkey: clientPubkey ?? this.clientPubkey,
        name: name.present ? name.value : this.name,
        walletServicePubkey: walletServicePubkey ?? this.walletServicePubkey,
        relays: relays ?? this.relays,
        clientRelays:
            clientRelays.present ? clientRelays.value : this.clientRelays,
        budgetRenewal: budgetRenewal ?? this.budgetRenewal,
        budgetRenewedAt: budgetRenewedAt.present
            ? budgetRenewedAt.value
            : this.budgetRenewedAt,
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
        isolated: isolated.present ? isolated.value : this.isolated,
        isFrozen: isFrozen.present ? isFrozen.value : this.isFrozen,
        categories: categories.present ? categories.value : this.categories,
        createdAt: createdAt ?? this.createdAt,
        lud16: lud16.present ? lud16.value : this.lud16,
      );
  WalletConnectionTable copyWithCompanion(WalletConnectionsCompanion data) {
    return WalletConnectionTable(
      clientPubkey: data.clientPubkey.present
          ? data.clientPubkey.value
          : this.clientPubkey,
      name: data.name.present ? data.name.value : this.name,
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
      lud16: data.lud16.present ? data.lud16.value : this.lud16,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WalletConnectionTable(')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('name: $name, ')
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
          ..write('lud16: $lud16')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      clientPubkey,
      name,
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
      createdAt,
      lud16);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletConnectionTable &&
          other.clientPubkey == this.clientPubkey &&
          other.name == this.name &&
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
          other.createdAt == this.createdAt &&
          other.lud16 == this.lud16);
}

class WalletConnectionsCompanion
    extends UpdateCompanion<WalletConnectionTable> {
  final Value<String> clientPubkey;
  final Value<String?> name;
  final Value<String> walletServicePubkey;
  final Value<List<String>> relays;
  final Value<List<String>?> clientRelays;
  final Value<String> budgetRenewal;
  final Value<int?> budgetRenewedAt;
  final Value<int?> maxAmountSat;
  final Value<int?> remainingAmountSat;
  final Value<int?> expiresAt;
  final Value<List<String>?> methods;
  final Value<List<String>?> customMethods;
  final Value<List<String>?> notifications;
  final Value<List<String>?> customNotifications;
  final Value<bool?> isolated;
  final Value<bool?> isFrozen;
  final Value<List<String>?> categories;
  final Value<DateTime> createdAt;
  final Value<String?> lud16;
  final Value<int> rowid;
  const WalletConnectionsCompanion({
    this.clientPubkey = const Value.absent(),
    this.name = const Value.absent(),
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
    this.lud16 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WalletConnectionsCompanion.insert({
    required String clientPubkey,
    this.name = const Value.absent(),
    required String walletServicePubkey,
    required List<String> relays,
    this.clientRelays = const Value.absent(),
    required String budgetRenewal,
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
    required DateTime createdAt,
    this.lud16 = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : clientPubkey = Value(clientPubkey),
        walletServicePubkey = Value(walletServicePubkey),
        relays = Value(relays),
        budgetRenewal = Value(budgetRenewal),
        createdAt = Value(createdAt);
  static Insertable<WalletConnectionTable> custom({
    Expression<String>? clientPubkey,
    Expression<String>? name,
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
    Expression<String>? lud16,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (clientPubkey != null) 'client_pubkey': clientPubkey,
      if (name != null) 'name': name,
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
      if (lud16 != null) 'lud16': lud16,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WalletConnectionsCompanion copyWith(
      {Value<String>? clientPubkey,
      Value<String?>? name,
      Value<String>? walletServicePubkey,
      Value<List<String>>? relays,
      Value<List<String>?>? clientRelays,
      Value<String>? budgetRenewal,
      Value<int?>? budgetRenewedAt,
      Value<int?>? maxAmountSat,
      Value<int?>? remainingAmountSat,
      Value<int?>? expiresAt,
      Value<List<String>?>? methods,
      Value<List<String>?>? customMethods,
      Value<List<String>?>? notifications,
      Value<List<String>?>? customNotifications,
      Value<bool?>? isolated,
      Value<bool?>? isFrozen,
      Value<List<String>?>? categories,
      Value<DateTime>? createdAt,
      Value<String?>? lud16,
      Value<int>? rowid}) {
    return WalletConnectionsCompanion(
      clientPubkey: clientPubkey ?? this.clientPubkey,
      name: name ?? this.name,
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
      lud16: lud16 ?? this.lud16,
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
    if (walletServicePubkey.present) {
      map['wallet_service_pubkey'] =
          Variable<String>(walletServicePubkey.value);
    }
    if (relays.present) {
      map['relays'] = Variable<String>(
          $WalletConnectionsTable.$converterrelays.toSql(relays.value));
    }
    if (clientRelays.present) {
      map['client_relays'] = Variable<String>($WalletConnectionsTable
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
          $WalletConnectionsTable.$convertermethodsn.toSql(methods.value));
    }
    if (customMethods.present) {
      map['custom_methods'] = Variable<String>($WalletConnectionsTable
          .$convertercustomMethodsn
          .toSql(customMethods.value));
    }
    if (notifications.present) {
      map['notifications'] = Variable<String>($WalletConnectionsTable
          .$converternotificationsn
          .toSql(notifications.value));
    }
    if (customNotifications.present) {
      map['custom_notifications'] = Variable<String>($WalletConnectionsTable
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
      map['categories'] = Variable<String>($WalletConnectionsTable
          .$convertercategoriesn
          .toSql(categories.value));
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lud16.present) {
      map['lud16'] = Variable<String>(lud16.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletConnectionsCompanion(')
          ..write('clientPubkey: $clientPubkey, ')
          ..write('name: $name, ')
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
          ..write('lud16: $lud16, ')
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
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES wallet_connections (client_pubkey)'));
  static const VerificationMeta _walletServicePubkeyMeta =
      const VerificationMeta('walletServicePubkey');
  @override
  late final GeneratedColumn<String> walletServicePubkey =
      GeneratedColumn<String>('wallet_service_pubkey', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'REFERENCES wallet_connections (wallet_service_pubkey)'));
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
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES requests (id)'));
  static const VerificationMeta _resultTypeMeta =
      const VerificationMeta('resultType');
  @override
  late final GeneratedColumn<String> resultType = GeneratedColumn<String>(
      'result_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        requestId,
        resultType,
        result,
        errorCode,
        errorMessage,
        multiId,
        createdAt
      ];
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
    if (data.containsKey('result_type')) {
      context.handle(
          _resultTypeMeta,
          resultType.isAcceptableOrUnknown(
              data['result_type']!, _resultTypeMeta));
    } else if (isInserting) {
      context.missing(_resultTypeMeta);
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
    } else if (isInserting) {
      context.missing(_createdAtMeta);
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
      resultType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}result_type'])!,
      result: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}result']),
      errorCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_code']),
      errorMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_message']),
      multiId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}multi_id']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
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
  final String resultType;
  final String? result;
  final String? errorCode;
  final String? errorMessage;
  final String? multiId;
  final DateTime createdAt;
  const ResponseTable(
      {required this.id,
      required this.requestId,
      required this.resultType,
      this.result,
      this.errorCode,
      this.errorMessage,
      this.multiId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['request_id'] = Variable<String>(requestId);
    map['result_type'] = Variable<String>(resultType);
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
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ResponsesCompanion toCompanion(bool nullToAbsent) {
    return ResponsesCompanion(
      id: Value(id),
      requestId: Value(requestId),
      resultType: Value(resultType),
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
      createdAt: Value(createdAt),
    );
  }

  factory ResponseTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResponseTable(
      id: serializer.fromJson<String>(json['id']),
      requestId: serializer.fromJson<String>(json['requestId']),
      resultType: serializer.fromJson<String>(json['resultType']),
      result: serializer.fromJson<String?>(json['result']),
      errorCode: serializer.fromJson<String?>(json['errorCode']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
      multiId: serializer.fromJson<String?>(json['multiId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'requestId': serializer.toJson<String>(requestId),
      'resultType': serializer.toJson<String>(resultType),
      'result': serializer.toJson<String?>(result),
      'errorCode': serializer.toJson<String?>(errorCode),
      'errorMessage': serializer.toJson<String?>(errorMessage),
      'multiId': serializer.toJson<String?>(multiId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ResponseTable copyWith(
          {String? id,
          String? requestId,
          String? resultType,
          Value<String?> result = const Value.absent(),
          Value<String?> errorCode = const Value.absent(),
          Value<String?> errorMessage = const Value.absent(),
          Value<String?> multiId = const Value.absent(),
          DateTime? createdAt}) =>
      ResponseTable(
        id: id ?? this.id,
        requestId: requestId ?? this.requestId,
        resultType: resultType ?? this.resultType,
        result: result.present ? result.value : this.result,
        errorCode: errorCode.present ? errorCode.value : this.errorCode,
        errorMessage:
            errorMessage.present ? errorMessage.value : this.errorMessage,
        multiId: multiId.present ? multiId.value : this.multiId,
        createdAt: createdAt ?? this.createdAt,
      );
  ResponseTable copyWithCompanion(ResponsesCompanion data) {
    return ResponseTable(
      id: data.id.present ? data.id.value : this.id,
      requestId: data.requestId.present ? data.requestId.value : this.requestId,
      resultType:
          data.resultType.present ? data.resultType.value : this.resultType,
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
          ..write('resultType: $resultType, ')
          ..write('result: $result, ')
          ..write('errorCode: $errorCode, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('multiId: $multiId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, requestId, resultType, result, errorCode,
      errorMessage, multiId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResponseTable &&
          other.id == this.id &&
          other.requestId == this.requestId &&
          other.resultType == this.resultType &&
          other.result == this.result &&
          other.errorCode == this.errorCode &&
          other.errorMessage == this.errorMessage &&
          other.multiId == this.multiId &&
          other.createdAt == this.createdAt);
}

class ResponsesCompanion extends UpdateCompanion<ResponseTable> {
  final Value<String> id;
  final Value<String> requestId;
  final Value<String> resultType;
  final Value<String?> result;
  final Value<String?> errorCode;
  final Value<String?> errorMessage;
  final Value<String?> multiId;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ResponsesCompanion({
    this.id = const Value.absent(),
    this.requestId = const Value.absent(),
    this.resultType = const Value.absent(),
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
    required String resultType,
    this.result = const Value.absent(),
    this.errorCode = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.multiId = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        requestId = Value(requestId),
        resultType = Value(resultType),
        createdAt = Value(createdAt);
  static Insertable<ResponseTable> custom({
    Expression<String>? id,
    Expression<String>? requestId,
    Expression<String>? resultType,
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
      if (resultType != null) 'result_type': resultType,
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
      Value<String>? resultType,
      Value<String?>? result,
      Value<String?>? errorCode,
      Value<String?>? errorMessage,
      Value<String?>? multiId,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ResponsesCompanion(
      id: id ?? this.id,
      requestId: requestId ?? this.requestId,
      resultType: resultType ?? this.resultType,
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
    if (resultType.present) {
      map['result_type'] = Variable<String>(resultType.value);
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
          ..write('resultType: $resultType, ')
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
  late final $WalletConnectionsTable walletConnections =
      $WalletConnectionsTable(this);
  late final $RequestsTable requests = $RequestsTable(this);
  late final $ResponsesTable responses = $ResponsesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [walletConnections, requests, responses];
}

typedef $$WalletConnectionsTableCreateCompanionBuilder
    = WalletConnectionsCompanion Function({
  required String clientPubkey,
  Value<String?> name,
  required String walletServicePubkey,
  required List<String> relays,
  Value<List<String>?> clientRelays,
  required String budgetRenewal,
  Value<int?> budgetRenewedAt,
  Value<int?> maxAmountSat,
  Value<int?> remainingAmountSat,
  Value<int?> expiresAt,
  Value<List<String>?> methods,
  Value<List<String>?> customMethods,
  Value<List<String>?> notifications,
  Value<List<String>?> customNotifications,
  Value<bool?> isolated,
  Value<bool?> isFrozen,
  Value<List<String>?> categories,
  required DateTime createdAt,
  Value<String?> lud16,
  Value<int> rowid,
});
typedef $$WalletConnectionsTableUpdateCompanionBuilder
    = WalletConnectionsCompanion Function({
  Value<String> clientPubkey,
  Value<String?> name,
  Value<String> walletServicePubkey,
  Value<List<String>> relays,
  Value<List<String>?> clientRelays,
  Value<String> budgetRenewal,
  Value<int?> budgetRenewedAt,
  Value<int?> maxAmountSat,
  Value<int?> remainingAmountSat,
  Value<int?> expiresAt,
  Value<List<String>?> methods,
  Value<List<String>?> customMethods,
  Value<List<String>?> notifications,
  Value<List<String>?> customNotifications,
  Value<bool?> isolated,
  Value<bool?> isFrozen,
  Value<List<String>?> categories,
  Value<DateTime> createdAt,
  Value<String?> lud16,
  Value<int> rowid,
});

final class $$WalletConnectionsTableReferences extends BaseReferences<
    _$Nip47Database, $WalletConnectionsTable, WalletConnectionTable> {
  $$WalletConnectionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RequestsTable, List<RequestTable>>
      _requestsRefsTable(_$Nip47Database db) =>
          MultiTypedResultKey.fromTable(db.requests,
              aliasName: $_aliasNameGenerator(
                  db.walletConnections.clientPubkey, db.requests.clientPubkey));

  $$RequestsTableProcessedTableManager get requestsRefs {
    final manager = $$RequestsTableTableManager($_db, $_db.requests).filter(
        (f) => f.clientPubkey.clientPubkey
            .sqlEquals($_itemColumn<String>('client_pubkey')!));

    final cache = $_typedResult.readTableOrNull(_requestsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$RequestsTable, List<RequestTable>>
      _walletServiceConnectionRequestsTable(_$Nip47Database db) =>
          MultiTypedResultKey.fromTable(db.requests,
              aliasName: $_aliasNameGenerator(
                  db.walletConnections.walletServicePubkey,
                  db.requests.walletServicePubkey));

  $$RequestsTableProcessedTableManager get walletServiceConnectionRequests {
    final manager = $$RequestsTableTableManager($_db, $_db.requests).filter(
        (f) => f.walletServicePubkey.walletServicePubkey
            .sqlEquals($_itemColumn<String>('wallet_service_pubkey')!));

    final cache = $_typedResult
        .readTableOrNull(_walletServiceConnectionRequestsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$WalletConnectionsTableFilterComposer
    extends Composer<_$Nip47Database, $WalletConnectionsTable> {
  $$WalletConnectionsTableFilterComposer({
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

  ColumnFilters<String> get lud16 => $composableBuilder(
      column: $table.lud16, builder: (column) => ColumnFilters(column));

  Expression<bool> requestsRefs(
      Expression<bool> Function($$RequestsTableFilterComposer f) f) {
    final $$RequestsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clientPubkey,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.clientPubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableFilterComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> walletServiceConnectionRequests(
      Expression<bool> Function($$RequestsTableFilterComposer f) f) {
    final $$RequestsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletServicePubkey,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.walletServicePubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableFilterComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WalletConnectionsTableOrderingComposer
    extends Composer<_$Nip47Database, $WalletConnectionsTable> {
  $$WalletConnectionsTableOrderingComposer({
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

  ColumnOrderings<String> get lud16 => $composableBuilder(
      column: $table.lud16, builder: (column) => ColumnOrderings(column));
}

class $$WalletConnectionsTableAnnotationComposer
    extends Composer<_$Nip47Database, $WalletConnectionsTable> {
  $$WalletConnectionsTableAnnotationComposer({
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

  GeneratedColumn<String> get lud16 =>
      $composableBuilder(column: $table.lud16, builder: (column) => column);

  Expression<T> requestsRefs<T extends Object>(
      Expression<T> Function($$RequestsTableAnnotationComposer a) f) {
    final $$RequestsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clientPubkey,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.clientPubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableAnnotationComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> walletServiceConnectionRequests<T extends Object>(
      Expression<T> Function($$RequestsTableAnnotationComposer a) f) {
    final $$RequestsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletServicePubkey,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.walletServicePubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableAnnotationComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$WalletConnectionsTableTableManager extends RootTableManager<
    _$Nip47Database,
    $WalletConnectionsTable,
    WalletConnectionTable,
    $$WalletConnectionsTableFilterComposer,
    $$WalletConnectionsTableOrderingComposer,
    $$WalletConnectionsTableAnnotationComposer,
    $$WalletConnectionsTableCreateCompanionBuilder,
    $$WalletConnectionsTableUpdateCompanionBuilder,
    (WalletConnectionTable, $$WalletConnectionsTableReferences),
    WalletConnectionTable,
    PrefetchHooks Function(
        {bool requestsRefs, bool walletServiceConnectionRequests})> {
  $$WalletConnectionsTableTableManager(
      _$Nip47Database db, $WalletConnectionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletConnectionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletConnectionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletConnectionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> clientPubkey = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String> walletServicePubkey = const Value.absent(),
            Value<List<String>> relays = const Value.absent(),
            Value<List<String>?> clientRelays = const Value.absent(),
            Value<String> budgetRenewal = const Value.absent(),
            Value<int?> budgetRenewedAt = const Value.absent(),
            Value<int?> maxAmountSat = const Value.absent(),
            Value<int?> remainingAmountSat = const Value.absent(),
            Value<int?> expiresAt = const Value.absent(),
            Value<List<String>?> methods = const Value.absent(),
            Value<List<String>?> customMethods = const Value.absent(),
            Value<List<String>?> notifications = const Value.absent(),
            Value<List<String>?> customNotifications = const Value.absent(),
            Value<bool?> isolated = const Value.absent(),
            Value<bool?> isFrozen = const Value.absent(),
            Value<List<String>?> categories = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<String?> lud16 = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WalletConnectionsCompanion(
            clientPubkey: clientPubkey,
            name: name,
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
            lud16: lud16,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String clientPubkey,
            Value<String?> name = const Value.absent(),
            required String walletServicePubkey,
            required List<String> relays,
            Value<List<String>?> clientRelays = const Value.absent(),
            required String budgetRenewal,
            Value<int?> budgetRenewedAt = const Value.absent(),
            Value<int?> maxAmountSat = const Value.absent(),
            Value<int?> remainingAmountSat = const Value.absent(),
            Value<int?> expiresAt = const Value.absent(),
            Value<List<String>?> methods = const Value.absent(),
            Value<List<String>?> customMethods = const Value.absent(),
            Value<List<String>?> notifications = const Value.absent(),
            Value<List<String>?> customNotifications = const Value.absent(),
            Value<bool?> isolated = const Value.absent(),
            Value<bool?> isFrozen = const Value.absent(),
            Value<List<String>?> categories = const Value.absent(),
            required DateTime createdAt,
            Value<String?> lud16 = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              WalletConnectionsCompanion.insert(
            clientPubkey: clientPubkey,
            name: name,
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
            lud16: lud16,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$WalletConnectionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {requestsRefs = false, walletServiceConnectionRequests = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (requestsRefs) db.requests,
                if (walletServiceConnectionRequests) db.requests
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (requestsRefs)
                    await $_getPrefetchedData<WalletConnectionTable,
                            $WalletConnectionsTable, RequestTable>(
                        currentTable: table,
                        referencedTable: $$WalletConnectionsTableReferences
                            ._requestsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WalletConnectionsTableReferences(db, table, p0)
                                .requestsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems.where(
                                (e) => e.clientPubkey == item.clientPubkey),
                        typedResults: items),
                  if (walletServiceConnectionRequests)
                    await $_getPrefetchedData<WalletConnectionTable,
                            $WalletConnectionsTable, RequestTable>(
                        currentTable: table,
                        referencedTable: $$WalletConnectionsTableReferences
                            ._walletServiceConnectionRequestsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$WalletConnectionsTableReferences(db, table, p0)
                                .walletServiceConnectionRequests,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems.where(
                                (e) =>
                                    e.walletServicePubkey ==
                                    item.walletServicePubkey),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$WalletConnectionsTableProcessedTableManager = ProcessedTableManager<
    _$Nip47Database,
    $WalletConnectionsTable,
    WalletConnectionTable,
    $$WalletConnectionsTableFilterComposer,
    $$WalletConnectionsTableOrderingComposer,
    $$WalletConnectionsTableAnnotationComposer,
    $$WalletConnectionsTableCreateCompanionBuilder,
    $$WalletConnectionsTableUpdateCompanionBuilder,
    (WalletConnectionTable, $$WalletConnectionsTableReferences),
    WalletConnectionTable,
    PrefetchHooks Function(
        {bool requestsRefs, bool walletServiceConnectionRequests})>;
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

final class $$RequestsTableReferences
    extends BaseReferences<_$Nip47Database, $RequestsTable, RequestTable> {
  $$RequestsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WalletConnectionsTable _clientPubkeyTable(_$Nip47Database db) =>
      db.walletConnections.createAlias($_aliasNameGenerator(
          db.requests.clientPubkey, db.walletConnections.clientPubkey));

  $$WalletConnectionsTableProcessedTableManager get clientPubkey {
    final $_column = $_itemColumn<String>('client_pubkey')!;

    final manager =
        $$WalletConnectionsTableTableManager($_db, $_db.walletConnections)
            .filter((f) => f.clientPubkey.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clientPubkeyTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $WalletConnectionsTable _walletServicePubkeyTable(
          _$Nip47Database db) =>
      db.walletConnections.createAlias($_aliasNameGenerator(
          db.requests.walletServicePubkey,
          db.walletConnections.walletServicePubkey));

  $$WalletConnectionsTableProcessedTableManager get walletServicePubkey {
    final $_column = $_itemColumn<String>('wallet_service_pubkey')!;

    final manager =
        $$WalletConnectionsTableTableManager($_db, $_db.walletConnections)
            .filter((f) => f.walletServicePubkey.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_walletServicePubkeyTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$ResponsesTable, List<ResponseTable>>
      _responsesRefsTable(_$Nip47Database db) =>
          MultiTypedResultKey.fromTable(db.responses,
              aliasName:
                  $_aliasNameGenerator(db.requests.id, db.responses.requestId));

  $$ResponsesTableProcessedTableManager get responsesRefs {
    final manager = $$ResponsesTableTableManager($_db, $_db.responses)
        .filter((f) => f.requestId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_responsesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

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

  ColumnFilters<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get params => $composableBuilder(
      column: $table.params, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnFilters(column));

  $$WalletConnectionsTableFilterComposer get clientPubkey {
    final $$WalletConnectionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clientPubkey,
        referencedTable: $db.walletConnections,
        getReferencedColumn: (t) => t.clientPubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletConnectionsTableFilterComposer(
              $db: $db,
              $table: $db.walletConnections,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WalletConnectionsTableFilterComposer get walletServicePubkey {
    final $$WalletConnectionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletServicePubkey,
        referencedTable: $db.walletConnections,
        getReferencedColumn: (t) => t.walletServicePubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletConnectionsTableFilterComposer(
              $db: $db,
              $table: $db.walletConnections,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> responsesRefs(
      Expression<bool> Function($$ResponsesTableFilterComposer f) f) {
    final $$ResponsesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.responses,
        getReferencedColumn: (t) => t.requestId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ResponsesTableFilterComposer(
              $db: $db,
              $table: $db.responses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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

  ColumnOrderings<String> get method => $composableBuilder(
      column: $table.method, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get params => $composableBuilder(
      column: $table.params, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt, builder: (column) => ColumnOrderings(column));

  $$WalletConnectionsTableOrderingComposer get clientPubkey {
    final $$WalletConnectionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.clientPubkey,
        referencedTable: $db.walletConnections,
        getReferencedColumn: (t) => t.clientPubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletConnectionsTableOrderingComposer(
              $db: $db,
              $table: $db.walletConnections,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$WalletConnectionsTableOrderingComposer get walletServicePubkey {
    final $$WalletConnectionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.walletServicePubkey,
        referencedTable: $db.walletConnections,
        getReferencedColumn: (t) => t.walletServicePubkey,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$WalletConnectionsTableOrderingComposer(
              $db: $db,
              $table: $db.walletConnections,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
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

  GeneratedColumn<String> get method =>
      $composableBuilder(column: $table.method, builder: (column) => column);

  GeneratedColumn<String> get params =>
      $composableBuilder(column: $table.params, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get expiresAt =>
      $composableBuilder(column: $table.expiresAt, builder: (column) => column);

  $$WalletConnectionsTableAnnotationComposer get clientPubkey {
    final $$WalletConnectionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.clientPubkey,
            referencedTable: $db.walletConnections,
            getReferencedColumn: (t) => t.clientPubkey,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$WalletConnectionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.walletConnections,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  $$WalletConnectionsTableAnnotationComposer get walletServicePubkey {
    final $$WalletConnectionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.walletServicePubkey,
            referencedTable: $db.walletConnections,
            getReferencedColumn: (t) => t.walletServicePubkey,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$WalletConnectionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.walletConnections,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }

  Expression<T> responsesRefs<T extends Object>(
      Expression<T> Function($$ResponsesTableAnnotationComposer a) f) {
    final $$ResponsesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.responses,
        getReferencedColumn: (t) => t.requestId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ResponsesTableAnnotationComposer(
              $db: $db,
              $table: $db.responses,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
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
    (RequestTable, $$RequestsTableReferences),
    RequestTable,
    PrefetchHooks Function(
        {bool clientPubkey, bool walletServicePubkey, bool responsesRefs})> {
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
              .map((e) =>
                  (e.readTable(table), $$RequestsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {clientPubkey = false,
              walletServicePubkey = false,
              responsesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (responsesRefs) db.responses],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (clientPubkey) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.clientPubkey,
                    referencedTable:
                        $$RequestsTableReferences._clientPubkeyTable(db),
                    referencedColumn: $$RequestsTableReferences
                        ._clientPubkeyTable(db)
                        .clientPubkey,
                  ) as T;
                }
                if (walletServicePubkey) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.walletServicePubkey,
                    referencedTable:
                        $$RequestsTableReferences._walletServicePubkeyTable(db),
                    referencedColumn: $$RequestsTableReferences
                        ._walletServicePubkeyTable(db)
                        .walletServicePubkey,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (responsesRefs)
                    await $_getPrefetchedData<RequestTable, $RequestsTable,
                            ResponseTable>(
                        currentTable: table,
                        referencedTable:
                            $$RequestsTableReferences._responsesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$RequestsTableReferences(db, table, p0)
                                .responsesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.requestId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
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
    (RequestTable, $$RequestsTableReferences),
    RequestTable,
    PrefetchHooks Function(
        {bool clientPubkey, bool walletServicePubkey, bool responsesRefs})>;
typedef $$ResponsesTableCreateCompanionBuilder = ResponsesCompanion Function({
  required String id,
  required String requestId,
  required String resultType,
  Value<String?> result,
  Value<String?> errorCode,
  Value<String?> errorMessage,
  Value<String?> multiId,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$ResponsesTableUpdateCompanionBuilder = ResponsesCompanion Function({
  Value<String> id,
  Value<String> requestId,
  Value<String> resultType,
  Value<String?> result,
  Value<String?> errorCode,
  Value<String?> errorMessage,
  Value<String?> multiId,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$ResponsesTableReferences
    extends BaseReferences<_$Nip47Database, $ResponsesTable, ResponseTable> {
  $$ResponsesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RequestsTable _requestIdTable(_$Nip47Database db) =>
      db.requests.createAlias(
          $_aliasNameGenerator(db.responses.requestId, db.requests.id));

  $$RequestsTableProcessedTableManager get requestId {
    final $_column = $_itemColumn<String>('request_id')!;

    final manager = $$RequestsTableTableManager($_db, $_db.requests)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_requestIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

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

  ColumnFilters<String> get resultType => $composableBuilder(
      column: $table.resultType, builder: (column) => ColumnFilters(column));

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

  $$RequestsTableFilterComposer get requestId {
    final $$RequestsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.requestId,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableFilterComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
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

  ColumnOrderings<String> get resultType => $composableBuilder(
      column: $table.resultType, builder: (column) => ColumnOrderings(column));

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

  $$RequestsTableOrderingComposer get requestId {
    final $$RequestsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.requestId,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableOrderingComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
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

  GeneratedColumn<String> get resultType => $composableBuilder(
      column: $table.resultType, builder: (column) => column);

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

  $$RequestsTableAnnotationComposer get requestId {
    final $$RequestsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.requestId,
        referencedTable: $db.requests,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$RequestsTableAnnotationComposer(
              $db: $db,
              $table: $db.requests,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
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
    (ResponseTable, $$ResponsesTableReferences),
    ResponseTable,
    PrefetchHooks Function({bool requestId})> {
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
            Value<String> resultType = const Value.absent(),
            Value<String?> result = const Value.absent(),
            Value<String?> errorCode = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<String?> multiId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsesCompanion(
            id: id,
            requestId: requestId,
            resultType: resultType,
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
            required String resultType,
            Value<String?> result = const Value.absent(),
            Value<String?> errorCode = const Value.absent(),
            Value<String?> errorMessage = const Value.absent(),
            Value<String?> multiId = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ResponsesCompanion.insert(
            id: id,
            requestId: requestId,
            resultType: resultType,
            result: result,
            errorCode: errorCode,
            errorMessage: errorMessage,
            multiId: multiId,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ResponsesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({requestId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (requestId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.requestId,
                    referencedTable:
                        $$ResponsesTableReferences._requestIdTable(db),
                    referencedColumn:
                        $$ResponsesTableReferences._requestIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
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
    (ResponseTable, $$ResponsesTableReferences),
    ResponseTable,
    PrefetchHooks Function({bool requestId})>;

class $Nip47DatabaseManager {
  final _$Nip47Database _db;
  $Nip47DatabaseManager(this._db);
  $$WalletConnectionsTableTableManager get walletConnections =>
      $$WalletConnectionsTableTableManager(_db, _db.walletConnections);
  $$RequestsTableTableManager get requests =>
      $$RequestsTableTableManager(_db, _db.requests);
  $$ResponsesTableTableManager get responses =>
      $$ResponsesTableTableManager(_db, _db.responses);
}
