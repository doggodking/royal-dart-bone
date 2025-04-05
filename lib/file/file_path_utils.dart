/// =======================================
/// File Path Utils
/// 파일 경로 유틸리티
/// =======================================

// Provides utilities for handling file paths (e.g. extract parent path, normalize separators).
// 파일 경로 처리에 필요한 유틸 함수들을 제공합니다 (예: 상위 경로 추출, 경로 구분자 통일).

/// Returns last directory name from path (e.g. "images" from "/assets/images/file.png").
/// 경로에서 마지막 디렉토리 이름을 반환합니다 (예: "/assets/images/file.png" → "images").
String getDirectoryName(String path) {
  final normalized = path.replaceAll('\\', '/');
  final segments = normalized.split('/');
  if (segments.length < 2) return '';
  return segments[segments.length - 2];
}

/// Returns parent directory path (e.g. "/assets/images" from "/assets/images/file.png").
/// 파일의 상위 디렉토리 경로를 반환합니다 (예: "/assets/images/file.png" → "/assets/images").
String getParentPath(String path) {
  final normalized = path.replaceAll('\\', '/');
  final segments = normalized.split('/');
  if (segments.length <= 1) return '';
  return segments.sublist(0, segments.length - 1).join('/');
}

/// Checks if path is absolute (starts with "/" or has drive letter).
/// 경로가 절대 경로인지 확인합니다 (예: "/usr/local", "C:\\" 등).
bool isAbsolutePath(String path) {
  return path.startsWith('/') || RegExp(r'^[a-zA-Z]:[\\/]').hasMatch(path);
}

/// Normalizes path separators to forward slashes (e.g. "C:\dir\file" → "C:/dir/file").
/// 경로 구분자를 통일해 슬래시(/)로 변환합니다 (예: "C:\dir\file" → "C:/dir/file").
String normalizePath(String path) {
  return path.replaceAll('\\', '/');
}
