import 'package:xml/xml.dart'; // for XML

/// =======================================
/// XML Data I/O
/// XML 데이터 입출력 유틸리티
/// =======================================

/// Parses an XML string into XmlDocument.
/// XML 문자열을 XmlDocument 객체로 파싱합니다.
XmlDocument parseXml(String xmlString) {
  return XmlDocument.parse(xmlString);
}

/// Converts an XmlDocument to a formatted string.
/// XmlDocument 객체를 보기 좋은 문자열로 변환합니다.
String formatXml(XmlDocument document) {
  return document.toXmlString(pretty: true, indent: '  ');
}

/// Parses an XML string into a list of maps using [tagName] as root.
/// 동일 태그를 반복하는 리스트 형태로 변환합니다.
/// 예: <user><id>1</id></user> → [{'id': '1'}]
List<Map<String, String>> parseXmlToMapList(String xmlString, String tagName) {
  final document = XmlDocument.parse(xmlString);
  final elements = document.findAllElements(tagName);

  return elements.map((element) {
    final map = <String, String>{};
    for (final child in element.children.whereType<XmlElement>()) {
      map[child.name.toString()] = child.innerText;
    }
    return map;
  }).toList();
}

/// Converts a list of maps to XML string.
/// Map 리스트를 XML 문자열로 변환합니다.
String encodeMapListToXml(
  List<Map<String, String>> data,
  String rootTag,
  String itemTag,
) {
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8"');
  builder.element(
    rootTag,
    nest: () {
      for (final map in data) {
        builder.element(
          itemTag,
          nest: () {
            map.forEach((key, value) {
              builder.element(key, nest: value);
            });
          },
        );
      }
    },
  );
  return builder.buildDocument().toXmlString(pretty: true, indent: '  ');
}
