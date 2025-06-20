import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/transaction.freezed.dart';

enum TransactionType {
  incoming('incoming'),
  outgoing('outgoing');

  final String plaintext;

  const TransactionType(this.plaintext);

  factory TransactionType.fromPlainText(String value) {
    return TransactionType.values.firstWhere(
      (transactionType) => transactionType.plaintext == value,
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
    required DateTime createdAt,
    DateTime? expiresAt,
    DateTime? settledAt,
    @Default({}) Map<dynamic, dynamic>? metadata,
  }) = _Transaction;
  const Transaction._();
}
