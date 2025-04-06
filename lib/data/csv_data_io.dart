import 'package:csv/csv.dart';

/// =======================================
/// CSV Data I/O
/// CSV 데이터 입출력 유틸리티
/// =======================================

/// Converts a CSV string to a list of maps.
/// Each map represents a row with column headers as keys.
/// CSV 문자열을 Map 리스트로 변환합니다.
/// 각 Map은 한 행을 나타내며, 키는 헤더가 됩니다.
List<Map<String, String>> parseCsvToMapList(String csvString) {
  final rows = const CsvToListConverter().convert(csvString, eol: '\n');

  if (rows.isEmpty) return [];

  final headers = rows.first.cast<String>();
  return rows.skip(1).map((row) {
    final values = row.cast<String>();
    return Map<String, String>.fromIterables(headers, values);
  }).toList();
}

/// Converts a list of maps to a CSV string.
/// Map 리스트를 CSV 문자열로 변환합니다.
String encodeMapListToCsv(List<Map<String, String>> data) {
  if (data.isEmpty) return '';

  final headers = data.first.keys.toList();
  final rows =
      [headers] +
      data.map((e) => headers.map((h) => e[h] ?? '').toList()).toList();
  return const ListToCsvConverter().convert(rows);
}

/// Converts a CSV string to a list of DTOs using [fromMap].
/// CSV 문자열을 [fromMap]을 통해 DTO 리스트로 변환합니다.
List<T> parseCsvToDtoList<T>(
  String csvString,
  T Function(Map<String, String>) fromMap,
) {
  final mapList = parseCsvToMapList(csvString);
  return mapList.map(fromMap).toList();
}

/// Converts a list of DTOs to a CSV string using [toMap].
/// [toMap]을 사용하여 DTO 리스트를 CSV 문자열로 변환합니다.
String encodeDtoListToCsv<T>(
  List<T> data,
  Map<String, String> Function(T) toMap,
) {
  final mapList = data.map(toMap).toList();
  return encodeMapListToCsv(mapList);
}
