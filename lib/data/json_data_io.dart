import 'dart:convert';

/// =======================================
/// JSON Data I/O
/// JSON 데이터 입출력 유틸리티
/// =======================================

/// Parses a JSON string into a Map.
/// JSON 문자열을 Map으로 변환합니다.
Map<String, dynamic> parseJsonToMap(String jsonString) {
  return json.decode(jsonString) as Map<String, dynamic>;
}

/// Parses a JSON string into a List of Maps.
/// JSON 문자열을 Map 리스트로 변환합니다.
List<Map<String, dynamic>> parseJsonToMapList(String jsonString) {
  final list = json.decode(jsonString) as List;
  return list.map((e) => e as Map<String, dynamic>).toList();
}

/// Parses a JSON string into a DTO using [fromJson].
/// [fromJson] 함수를 사용하여 JSON 문자열을 DTO로 변환합니다.
T parseJsonToDto<T>(
  String jsonString,
  T Function(Map<String, dynamic>) fromJson,
) {
  final map = json.decode(jsonString) as Map<String, dynamic>;
  return fromJson(map);
}

/// Parses a JSON string into a List of DTOs using [fromJson].
/// [fromJson] 함수를 사용하여 JSON 문자열을 DTO 리스트로 변환합니다.
List<T> parseJsonToDtoList<T>(
  String jsonString,
  T Function(Map<String, dynamic>) fromJson,
) {
  final list = json.decode(jsonString) as List;
  return list.map((e) => fromJson(e as Map<String, dynamic>)).toList();
}

/// Converts a Map to a JSON string.
/// Map 객체를 JSON 문자열로 변환합니다.
String encodeMapToJson(Map<String, dynamic> map) {
  return json.encode(map);
}

/// Converts a List of Maps to a JSON string.
/// Map 리스트를 JSON 문자열로 변환합니다.
String encodeMapListToJson(List<Map<String, dynamic>> list) {
  return json.encode(list);
}

/// Converts a DTO to a JSON string using [toJson].
/// [toJson]을 사용하여 DTO를 JSON 문자열로 변환합니다.
String encodeDtoToJson<T>(T dto, Map<String, dynamic> Function(T) toJson) {
  return json.encode(toJson(dto));
}

/// Converts a List of DTOs to a JSON string using [toJson].
/// [toJson]을 사용하여 DTO 리스트를 JSON 문자열로 변환합니다.
String encodeDtoListToJson<T>(
  List<T> list,
  Map<String, dynamic> Function(T) toJson,
) {
  final mapped = list.map(toJson).toList();
  return json.encode(mapped);
}
