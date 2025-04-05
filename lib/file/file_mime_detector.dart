import 'file_name_extractor.dart';

/// =======================================
/// File MIME Type Detector
/// 파일 MIME 타입 판별기
/// =======================================
///
/// Looks up MIME type based on file extension.
/// 확장자 기반으로 파일의 MIME 타입을 반환합니다.
///
/// Useful for:
/// - Setting content-type headers
/// - File preview handling
/// - Upload/media processing
///
/// 주요 사용처:
/// - Content-Type 헤더 지정
/// - 파일 미리보기 타입 처리
/// - 업로드 및 미디어 처리

const Map<String, String> extensionToMimeMap = {
  // Image
  'jpg': 'image/jpeg',
  'jpeg': 'image/jpeg',
  'png': 'image/png',
  'gif': 'image/gif',
  'bmp': 'image/bmp',
  'webp': 'image/webp',
  'heic': 'image/heic',
  'svg': 'image/svg+xml',

  // Document
  'pdf': 'application/pdf',
  'doc': 'application/msword',
  'docx':
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  'txt': 'text/plain',
  'rtf': 'application/rtf',

  // Spreadsheet
  'xls': 'application/vnd.ms-excel',
  'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  'csv': 'text/csv',

  // Presentation
  'ppt': 'application/vnd.ms-powerpoint',
  'pptx':
      'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  'key': 'application/x-iwork-keynote-sffkey',

  // Ebook
  'epub': 'application/epub+zip',
  'mobi': 'application/x-mobipocket-ebook',

  // Font
  'ttf': 'font/ttf',
  'otf': 'font/otf',
  'woff': 'font/woff',
  'woff2': 'font/woff2',

  // Audio
  'mp3': 'audio/mpeg',
  'wav': 'audio/wav',
  'aac': 'audio/aac',
  'flac': 'audio/flac',
  'ogg': 'audio/ogg',
  'm4a': 'audio/mp4',

  // Video
  'mp4': 'video/mp4',
  'mov': 'video/quicktime',
  'avi': 'video/x-msvideo',
  'mkv': 'video/x-matroska',
  'webm': 'video/webm',

  // Archive
  'zip': 'application/zip',
  'rar': 'application/vnd.rar',
  '7z': 'application/x-7z-compressed',
  'tar': 'application/x-tar',
  'gz': 'application/gzip',
  'bz2': 'application/x-bzip2',

  // Code / Markup / Data
  'json': 'application/json',
  'yaml': 'application/x-yaml',
  'yml': 'application/x-yaml',
  'html': 'text/html',
  'xml': 'application/xml',
  'dart': 'text/plain',
  'js': 'application/javascript',
  'ts': 'application/typescript',
  'py': 'text/x-python',
  'java': 'text/x-java-source',
  'kt': 'text/x-kotlin',
};

/// Returns the MIME type for a given file path.
/// 파일 경로에서 확장자를 추출하여 MIME 타입을 반환합니다.
String? getMimeType(String path) {
  final ext = getFileExtension(path);
  return extensionToMimeMap[ext];
}
