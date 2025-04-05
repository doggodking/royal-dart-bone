# 📝 Dart Comment Style Guide
_royal-dart-bone 주석 스타일 가이드_

This guide describes how to write consistent and clear comments in Dart code,  
as demonstrated in `example_comment_style.dart`.

이 가이드는 Dart 코드에서 일관되고 명확한 주석을 작성하는 방법을 설명합니다.  
모든 예시는 `example_comment_style.dart` 파일을 기준으로 작성되었습니다.

---

## ✨ Guiding Principles
_기본 원칙_

- All public code should include English + Korean comments  
  → 함수, 클래스, enum 설명 등은 모두 병기
- Comments should describe **what and why**, not just how
- Keep it **short, consistent, and meaningful**

- 모든 공개 코드에는 영어와 한글 주석을 함께 작성합니다
- 주석은 단순 코드 설명이 아닌 **무엇을, 왜** 하는지를 중심으로 작성합니다
- **짧고 일관성 있게**, 의미 있는 내용을 담아야 합니다

---

## 📄 File-Level Comments
_파일 전체 설명_

```dart
/// ==============================
/// Example: Comment Style Guide
/// 주석 작성 스타일 예시
/// ==============================
///
/// This file demonstrates the comment conventions used in this repository.
/// All code snippets aim to provide both English and Korean comments,
/// with consistent structure and purpose per section.
///
/// 아래는 주석 작성 예시입니다. (실제 사용하는 코드가 아님)
```

> 🔍 파일 상단에는 제목 + 요약 + 사용 목적을 영어/한글로 병기하여 작성합니다.

---

## 🧩 Function Comments
_함수 주석_

```dart
/// Calculates the sum of two integers.
/// 두 정수의 합을 계산합니다.
int sum(int a, int b) => a + b;
```

> 🔍 함수는 "무엇을 한다"는 설명을 중심으로 한 줄 또는 두 줄로 명확하게 작성합니다.

---

## 🎭 Enum Comments
_enum 및 값 주석_

```dart
/// Represents a basic user role.
/// 기본 사용자 권한을 나타냅니다.
enum UserRole {
  /// A regular user of the system.
  /// 시스템의 일반 사용자입니다.
  user,

  /// A user with administrative privileges.
  /// 관리자 권한을 가진 사용자입니다.
  admin,
}
```

> 🔍 enum 자체뿐 아니라 각 값에도 주석을 붙여 의도를 설명합니다.

---

## 📦 Parameter Comments
_매개변수 설명_

```dart
/// Multiplies a number by a factor with an optional label.
/// 선택적 라벨과 함께 숫자를 특정 배수로 곱합니다.
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
```

> 🔍 매개변수 설명은 `Parameters:` 블럭으로 나누어 정리하고,  
> 영어/한글 설명을 동일한 순서로 병기합니다.

---

## ✅ Tip

- 불필요한 코드 설명은 제거하세요 (e.g. `// add one to value` 같은 코드 반복 설명)
- 모든 예시는 한글이 **첫 번째 언어가 아님**을 감안하고, 영어를 기준으로 구성하세요
- 단순히 번역이 아닌 **읽는 사람을 위한 설명**이 되도록 작성하세요

---

## 📚 Reference

- Example File: [`lib/example_comment_style.dart`](./lib/example_comment_style.dart)
- 전체 스니펫은 [royal-dart-bone](https://github.com/doggodking/royal-dart-bone) 저장소에서 관리됩니다.

---

Feel free to contribute improvements to this guideline via PR 🙌  
가이드를 개선하고 싶다면 언제든 PR을 보내주세요!
