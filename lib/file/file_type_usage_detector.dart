/// ==============================
/// File Usage Type Detector
/// 파일 용도 분류기
/// ==============================
///
/// Categorizes files into usage types like image, document, audio, etc.,
/// based on their extensions.
///
/// 확장자 기반으로 이미지, 문서, 오디오 등 파일의 용도를 분류합니다.
///
/// Useful for:
/// - File filtering logic
/// - UI representation (icons, labels)
/// - Pre-upload validation
///
/// 주요 사용처:
/// - 파일 필터 조건 구성
/// - UI 표시용 분류 (아이콘, 태그 등)
/// - 업로드 전 검사 처리

/// Enum representing high-level file usage types.
/// 확장자 기반으로 분류되는 주요 파일 용도 열거형입니다.
enum FileUsageType { image, document, audio, video, archive, code, unknown }

/// Provides method to detect file usage type based on extension.
/// 확장자를 기준으로 파일 사용 용도를 판별하는 기능을 제공합니다.
class FileUsageDetector {
  static const _imageExtensions = {
    'jpg',
    'jpeg',
    'png',
    'gif',
    'bmp',
    'webp',
    'heic',
  };

  static const _documentExtensions = {
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
  };

  static const _audioExtensions = {'mp3', 'wav', 'aac', 'ogg', 'flac', 'm4a'};

  static const _videoExtensions = {'mp4', 'mov', 'avi', 'mkv', 'webm'};

  static const _archiveExtensions = {'zip', 'rar', '7z', 'tar', 'gz', 'bz2'};

  static const _codeExtensions = {
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
  };

  /// Detects the usage type of the file from its path or filename.
  /// Returns a [FileUsageType] such as image, document, etc.
  /// 파일 경로 또는 이름을 통해 용도 타입을 반환합니다.
  /// 이미지, 문서 등으로 분류된 [FileUsageType]을 반환합니다.
  static FileUsageType detectUsageType(String path) {
    final ext = _getExtension(path);
    if (_imageExtensions.contains(ext)) return FileUsageType.image;
    if (_documentExtensions.contains(ext)) return FileUsageType.document;
    if (_audioExtensions.contains(ext)) return FileUsageType.audio;
    if (_videoExtensions.contains(ext)) return FileUsageType.video;
    if (_archiveExtensions.contains(ext)) return FileUsageType.archive;
    if (_codeExtensions.contains(ext)) return FileUsageType.code;
    return FileUsageType.unknown;
  }

  /// Extracts lowercase file extension from a path.
  /// Returns empty string if none found.
  /// 파일 경로에서 소문자 확장자를 추출합니다.
  /// 확장자가 없으면 빈 문자열을 반환합니다.
  static String _getExtension(String path) {
    final dot = path.lastIndexOf('.');
    if (dot == -1 || dot == path.length - 1) return '';
    return path.substring(dot + 1).toLowerCase();
  }
}
