enum Method {
  payInvoice('pay_invoice'),
  multiPayInvoice('multi_pay_invoice'),
  payKeysend('pay_keysend'),
  multiPayKeysend('multi_pay_keysend'),
  makeInvoice('make_invoice'),
  lookupInvoice('lookup_invoice'),
  listTransactions('list_transactions'),
  getBalance('get_balance'),
  getInfo('get_info'),
  custom('custom');

  final String plaintext;

  const Method(this.plaintext);

  static Method fromPlaintext(String plaintext) {
    switch (plaintext) {
      case 'pay_invoice':
        return payInvoice;
      case 'multi_pay_invoice':
        return multiPayInvoice;
      case 'pay_keysend':
        return payKeysend;
      case 'multi_pay_keysend':
        return multiPayKeysend;
      case 'make_invoice':
        return makeInvoice;
      case 'lookup_invoice':
        return lookupInvoice;
      case 'list_transactions':
        return listTransactions;
      case 'get_balance':
        return getBalance;
      case 'get_info':
        return getInfo;
      default:
        return custom;
    }
  }
}
