import 'package:drift/drift.dart';
import 'dart:convert'; // For jsonEncode/jsonDecode

class StringListTypeConverter extends TypeConverter<List<String>, String> {
  const StringListTypeConverter();

  @override
  List<String> fromSql(String fromDb) {
    // Convert the JSON string back to a List<String>
    final decoded = jsonDecode(fromDb);
    if (decoded is List) {
      return decoded.map((e) => e.toString()).toList();
    }
    return [];
  }

  @override
  String toSql(List<String> value) {
    // Convert the list to a JSON string
    return jsonEncode(value);
  }
}
