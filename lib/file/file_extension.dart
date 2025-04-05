/// ==============================
/// File Extension Utilities
/// 파일 확장자 유틸리티
/// ==============================
///
/// This file provides helper functions for working with file extensions,
/// such as extracting or normalizing them from a file path.
///
/// Dart에서 파일 경로로부터 확장자를 추출하거나 처리하는 기능을 제공합니다.
///
/// Useful for:
/// - MIME type detection
/// - File categorization
/// - Upload validation
///
/// 주요 사용처:
/// - MIME 타입 판별
/// - 파일 용도 분류
/// - 파일 업로드 제한 검사

/// Extracts lowercase file extension from a file path.
/// Returns an empty string if none found.
/// 파일 경로에서 소문자 확장자를 추출합니다.
/// 확장자가 없으면 빈 문자열을 반환합니다.
String getFileExtension(String path) {
  final dot = path.lastIndexOf('.');
  if (dot == -1 || dot == path.length - 1) return '';
  return path.substring(dot + 1).toLowerCase();
}
