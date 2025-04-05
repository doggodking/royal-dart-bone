/// ==============================
/// Example: Comment Style Guide
/// 주석 작성 스타일 예시
/// ==============================
///
/// This file demonstrates the comment conventions used in this repository.
/// All code snippets aim to provide both English and Korean comments,
/// with consistent structure and purpose per section.
///
/// 이 파일은 저장소에서 사용하는 주석 스타일을 설명합니다.
/// 모든 코드 스니펫은 영어와 한글 주석을 함께 제공하며,
/// 각 위치에 따라 명확한 주석 구조를 유지합니다.

/// This is a comment style example.
/// 주석 작성법 예시입니다.
int exampleTest(int a, int b) {
  return a + b;
}

/// This is a comment style example.
/// 주석 작성법 예시입니다.
///
/// Parameters:
/// - [value]: the number to be multiplied
/// - [factor]: the multiplier (default: 2)
/// - [label]: optional description label
///
/// 매개변수:
/// - [value]: 곱할 숫자
/// - [factor]: 곱할 배수 (기본값: 2)
/// - [label]: 선택적 라벨 설명
String exampleTestAdd(int value, {int factor = 2, String? label}) {
  final result = value * factor;
  return label != null ? '$label: $result' : '$result';
}
