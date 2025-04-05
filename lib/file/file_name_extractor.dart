/// =======================================
/// File Name Extractor
/// 파일 이름 추출기
/// =======================================

// Extracts file name or extension from a file path.
// 파일 경로에서 파일명 또는 확장자를 추출하는 유틸입니다.

/// 파일 이름 관련 유틸 함수들을 제공합니다.
library file_name_utils;

/// Returns file name from full path. Can remove extension if needed.
/// 전체 경로에서 파일명을 추출합니다. 확장자 포함 여부를 선택할 수 있습니다.
String getFileName(String path, {bool withExtension = true}) {
  final normalized = path.replaceAll('\\', '/');
  final segments = normalized.split('/');
  final fileName = segments.isNotEmpty ? segments.last : '';
  if (!withExtension) {
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex > 0) {
      return fileName.substring(0, dotIndex);
    }
  }
  return fileName;
}

// Returns extension from file path. Supports multi-extension if needed (e.g. "gz", "tar.gz").
// 경로에서 확장자를 추출합니다. 다중 확장자도 지원할 수 있습니다 (예: "gz", "tar.gz").
String? getFileExtension(String path, {bool multiExtension = false}) {
  final fileName = getFileName(path);
  final dotIndex = fileName.lastIndexOf('.');
  if (dotIndex < 0) return null;

  if (!multiExtension) {
    return fileName.substring(dotIndex + 1);
  }

  final parts = fileName.split('.');
  return parts.length > 1 ? parts.sublist(1).join('.') : null;
}

/// Removes extension from file name.
/// 파일명에서 확장자만 제거한 이름을 반환합니다.
String removeExtension(String path) {
  final fileName = getFileName(path);
  final dotIndex = fileName.lastIndexOf('.');
  return (dotIndex > 0) ? fileName.substring(0, dotIndex) : fileName;
}
