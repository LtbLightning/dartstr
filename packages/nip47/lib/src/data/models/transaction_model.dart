import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nip47/src/domain/entities/transaction.dart';

part 'generated/transaction_model.freezed.dart';

@freezed
sealed class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String type,
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    int? feesPaidSat,
    required int createdAt,
    int? expiresAt,
    int? settledAt,
    @Default({}) Map<dynamic, dynamic>? metadata,
  }) = _TransactionModel;

  const TransactionModel._();

  factory TransactionModel.fromEntity(Transaction transaction) {
    return TransactionModel(
      type: transaction.type.plaintext,
      invoice: transaction.invoice,
      description: transaction.description,
      descriptionHash: transaction.descriptionHash,
      preimage: transaction.preimage,
      paymentHash: transaction.paymentHash,
      amountSat: transaction.amountSat,
      feesPaidSat: transaction.feesPaidSat,
      createdAt: (transaction.createdAt.millisecondsSinceEpoch / 1000).round(),
      expiresAt: transaction.expiresAt != null
          ? (transaction.expiresAt!.millisecondsSinceEpoch / 1000).round()
          : null,
      settledAt: transaction.settledAt != null
          ? (transaction.settledAt!.millisecondsSinceEpoch / 1000).round()
          : null,
      metadata: transaction.metadata,
    );
  }

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      type: json['type'] as String,
      invoice: json['invoice'] as String?,
      description: json['description'] as String?,
      descriptionHash: json['description_hash'] as String?,
      preimage: json['preimage'] as String?,
      paymentHash: json['payment_hash'] as String,
      amountSat: json['amount'] as int,
      feesPaidSat: json['fees_paid'] as int?,
      createdAt: json['created_at'] as int,
      expiresAt: json['expires_at'] as int?,
      settledAt: json['settled_at'] as int?,
      metadata: (json['metadata'] as Map<dynamic, dynamic>?) ?? {},
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      if (invoice != null) 'invoice': invoice,
      if (description != null) 'description': description,
      if (descriptionHash != null) 'description_hash': descriptionHash,
      if (preimage != null) 'preimage': preimage,
      'payment_hash': paymentHash,
      'amount': amountSat,
      if (feesPaidSat != null) 'fees_paid': feesPaidSat,
      'created_at': createdAt,
      if (expiresAt != null) 'expires_at': expiresAt,
      if (settledAt != null) 'settled_at': settledAt,
      if (metadata != null && metadata!.isNotEmpty) 'metadata': metadata,
    };
  }

  Transaction toEntity() {
    return Transaction(
      type: TransactionType.fromPlainText(type),
      invoice: invoice,
      description: description,
      descriptionHash: descriptionHash,
      preimage: preimage,
      paymentHash: paymentHash,
      amountSat: amountSat,
      feesPaidSat: feesPaidSat ?? 0,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt * 1000),
      expiresAt: expiresAt != null
          ? DateTime.fromMillisecondsSinceEpoch(expiresAt! * 1000)
          : null,
      settledAt: settledAt != null
          ? DateTime.fromMillisecondsSinceEpoch(settledAt! * 1000)
          : null,
      metadata: metadata ?? {},
    );
  }
}
