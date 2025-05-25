import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/transaction.freezed.dart';

enum TransactionType {
  incoming('incoming'),
  outgoing('outgoing');

  final String value;

  const TransactionType(this.value);

  factory TransactionType.fromValue(String value) {
    return TransactionType.values.firstWhere(
      (transactionType) => transactionType.value == value,
      orElse: () => TransactionType.incoming,
    );
  }
}

@freezed
sealed class Transaction with _$Transaction {
  const factory Transaction({
    required TransactionType type,
    String? invoice,
    String? description,
    String? descriptionHash,
    String? preimage,
    required String paymentHash,
    required int amountSat,
    required int feesPaidSat,
    required int createdAt,
    int? expiresAt,
    int? settledAt,
    @Default({}) Map<dynamic, dynamic>? metadata,
  }) = _Transaction;
  const Transaction._();
}
