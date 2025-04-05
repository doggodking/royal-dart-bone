# 📝 Dart Comment Style Guide
_royal-dart-bone 주석 스타일 가이드_

This guide describes how to write consistent and clear comments in Dart code, as demonstrated in `example_comment_style.dart`.

이 가이드는 Dart 코드에서 일관되고 명확한 주석을 작성하는 방법을 설명합니다. 모든 예시는 `example_comment_style.dart` 파일을 기준으로 작성되었습니다.

---

## ✨ Guiding Principles
_기본 원칙_

- All public code should include English + Korean comments
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

> 🔍 **Note**: Provide file-level summary and intent in both English and Korean.  
> 🔍 **참고**: 파일 상단에는 제목, 요약, 목적을 영어/한글로 병기하여 작성합니다.

---

## 🧩 Function Comments
_함수 주석_

```dart
/// Calculates the sum of two integers.
/// 두 정수의 합을 계산합니다.
int sum(int a, int b) => a + b;
```

> 🔍 **Note**: Keep function comments concise and focused on what it does.  
> 🔍 **참고**: 함수 설명은 무엇을 하는지 명확하게 표현하며 간결하게 작성합니다.

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

> 🔍 **Note**: Describe both the enum and each value clearly.  
> 🔍 **참고**: enum 자체와 각 항목에 대한 설명을 모두 작성합니다.

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

> 🔍 **Note**: Use `Parameters:` to clearly list inputs, with consistent structure.  
> 🔍 **참고**: 매개변수는 `Parameters:` 블럭으로 정리하고 구조를 통일합니다.

---

## ✅ Tip

- Avoid redundant or obvious code comments
- Use English-first, with Korean provided underneath
- Focus on the purpose and intention behind code

- 불필요하거나 자명한 주석은 제거합니다
- 영어를 기준으로 작성하되, 한글을 아래에 함께 제공합니다
- 단순 설명이 아닌 코드의 목적과 의도를 표현합니다

---

## 📚 Reference

- Example File: [`lib/example_comment_style.dart`](./lib/example_comment_style.dart)
- 전체 스니펫은 [royal-dart-bone](https://github.com/doggodking/royal-dart-bone) 저장소에서 관리됩니다.

---

Feel free to contribute improvements to this guideline via PR 🙌  
가이드를 개선하고 싶다면 언제든 PR을 보내주세요!
