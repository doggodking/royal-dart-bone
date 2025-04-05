/// ==============================
/// File MIME Type Detector
/// 파일 MIME 타입 판별기
/// ==============================
///
/// Provides MIME type lookup and detection based on file extensions.
///
/// 확장자를 기준으로 파일의 MIME 타입을 추론하고 확인하는 기능을 제공합니다.
///
/// Useful for:
/// - Content-type handling during uploads
/// - File preview type decisions
/// - Media type filtering
///
/// 주요 사용처:
/// - 업로드 시 Content-Type 판별
/// - 미리보기 타입 결정
/// - 이미지/문서 등 파일 타입 필터링

/// Extracts the lowercase file extension from a file path.
/// Returns an empty string if not available.
/// 파일 경로에서 소문자 확장자를 추출합니다.
/// 확장자가 없으면 빈 문자열을 반환합니다.
String getFileExtension(String path) {
  final dot = path.lastIndexOf('.');
  if (dot == -1 || dot == path.length - 1) return '';
  return path.substring(dot + 1).toLowerCase();
}

/// Maps file extensions (e.g. 'jpg') to their corresponding MIME types.
/// Commonly used for inferring MIME types during uploads or previews.
/// 파일 확장자(e.g. 'jpg')를 MIME 타입에 매핑하는 자료입니다.
/// 업로드나 미리보기에서 MIME 타입을 추론할 때 자주 사용됩니다.
const Map<String, String> extensionToMimeMap = {
  // Images
  'png': 'image/png',
  'jpg': 'image/jpeg',
  'jpeg': 'image/jpeg',
  'gif': 'image/gif',
  'bmp': 'image/bmp',
  'webp': 'image/webp',
  'heic': 'image/heic',

  // Documents
  'pdf': 'application/pdf',
  'doc': 'application/msword',
  'docx':
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  'ppt': 'application/vnd.ms-powerpoint',
  'pptx':
      'application/vnd.openxmlformats-officedocument.presentationml.presentation',
  'xls': 'application/vnd.ms-excel',
  'xlsx': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  'txt': 'text/plain',
  'csv': 'text/csv',
  'rtf': 'application/rtf',
  'html': 'text/html',

  // Audio
  'mp3': 'audio/mpeg',
  'wav': 'audio/wav',
  'aac': 'audio/aac',
  'ogg': 'audio/ogg',
  'flac': 'audio/flac',
  'm4a': 'audio/mp4',

  // Video
  'mp4': 'video/mp4',
  'mov': 'video/quicktime',
  'avi': 'video/x-msvideo',
  'mkv': 'video/x-matroska',
  'webm': 'video/webm',

  // Archives
  'zip': 'application/zip',
  'rar': 'application/vnd.rar',
  '7z': 'application/x-7z-compressed',
  'tar': 'application/x-tar',
  'gz': 'application/gzip',
  'bz2': 'application/x-bzip2',

  // Code
  'js': 'application/javascript',
  'dart': 'application/dart',
  'py': 'text/x-python',
  'java': 'text/x-java-source',
  'kt': 'text/x-kotlin',
  'ts': 'application/typescript',
  'css': 'text/css',
  'json': 'application/json',
  'xml': 'application/xml',
};

/// Returns the MIME type for a given file path.
/// Defaults to 'application/octet-stream' if unknown.
/// 주어진 파일 경로의 MIME 타입을 반환합니다.
/// 확장자를 알 수 없으면 기본값으로 'application/octet-stream'을 반환합니다.
String detectMimeTypeFromPath(String path) {
  final ext = getFileExtension(path);
  return extensionToMimeMap[ext] ?? 'application/octet-stream';
}

/// Checks whether the file is an image based on its MIME type.
/// e.g. png, jpg, webp, etc.
/// MIME 타입 기준으로 이미지 파일인지 확인합니다.
/// 예: png, jpg, webp 등
bool isImageMime(String path) {
  final type = detectMimeTypeFromPath(path);
  return type.startsWith('image/');
}

/// Checks whether the file is a document based on its extension.
/// e.g. pdf, docx, txt, csv, etc.
/// 확장자를 기반으로 문서 파일인지 확인합니다.
/// 예: pdf, docx, txt, csv 등
bool isDocumentMime(String path) {
  final ext = getFileExtension(path);
  return [
    'pdf',
    'doc',
    'docx',
    'ppt',
    'pptx',
    'xls',
    'xlsx',
    'txt',
    'csv',
    'rtf',
    'html',
  ].contains(ext);
}

/// Checks whether the file is an audio file based on its extension.
/// e.g. mp3, wav, m4a, etc.
/// 확장자를 기반으로 오디오 파일인지 확인합니다.
/// 예: mp3, wav, m4a 등
bool isAudioMime(String path) {
  final ext = getFileExtension(path);
  return ['mp3', 'wav', 'aac', 'ogg', 'flac', 'm4a'].contains(ext);
}

/// Checks whether the file is a video file based on its extension.
/// e.g. mp4, avi, mkv, etc.
/// 확장자를 기반으로 비디오 파일인지 확인합니다.
/// 예: mp4, avi, mkv 등
bool isVideoMime(String path) {
  final ext = getFileExtension(path);
  return ['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(ext);
}

/// Checks whether the file is an archive or compressed file.
/// e.g. zip, rar, 7z, tar, etc.
/// 압축 파일인지 확인합니다.
/// 예: zip, rar, 7z, tar 등
bool isArchiveMime(String path) {
  final ext = getFileExtension(path);
  return ['zip', 'rar', '7z', 'tar', 'gz', 'bz2'].contains(ext);
}

/// Checks whether the file is a source code or script file.
/// e.g. dart, js, py, json, etc.
/// 코드 또는 스크립트 파일인지 확인합니다.
/// 예: dart, js, py, json 등
bool isCodeMime(String path) {
  final ext = getFileExtension(path);
  return [
    'js',
    'dart',
    'py',
    'java',
    'kt',
    'ts',
    'html',
    'css',
    'json',
    'xml',
  ].contains(ext);
}
