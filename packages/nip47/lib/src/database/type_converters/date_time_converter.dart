import 'package:drift/drift.dart';
import 'package:intl/intl.dart';

/// Drift <-> SQLite string with format: "yyyy-MM-dd HH:mm:ss.SSS"
class DateTimeConverter extends TypeConverter<DateTime, String> {
  static final _formatter = DateFormat("yyyy-MM-dd HH:mm:ss.SSS");

  const DateTimeConverter();

  @override
  DateTime fromSql(String fromDb) {
    return _formatter.parseUtc(fromDb);
  }

  @override
  String toSql(DateTime value) {
    return _formatter.format(value.toUtc());
  }
}
