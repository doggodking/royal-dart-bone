import 'file_name_extractor.dart';

/// =======================================
/// File Usage Type Detector
/// 파일 용도 분류기
/// =======================================
///
/// Categorizes files into usage types like image, spreadsheet, audio, etc.,
/// based on their extensions.
///
/// 확장자 기반으로 이미지, 문서, 스프레드시트, 오디오 등 파일의 용도를 분류합니다.
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
enum FileUsageType {
  image,
  vectorImage,
  document,
  spreadsheet,
  presentation,
  ebook,
  font,
  audio,
  video,
  archive,
  code,
  markup,
  data,
  unknown,
}

const _extensions = <FileUsageType, Set<String>>{
  FileUsageType.image: {'jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'heic'},
  FileUsageType.vectorImage: {'svg', 'ai'},
  FileUsageType.document: {'pdf', 'doc', 'docx', 'txt', 'rtf'},
  FileUsageType.spreadsheet: {'xls', 'xlsx', 'csv'},
  FileUsageType.presentation: {'ppt', 'pptx', 'key'},
  FileUsageType.ebook: {'epub', 'mobi'},
  FileUsageType.font: {'ttf', 'otf', 'woff', 'woff2'},
  FileUsageType.audio: {'mp3', 'wav', 'aac', 'flac', 'ogg', 'm4a'},
  FileUsageType.video: {'mp4', 'mov', 'avi', 'mkv', 'webm'},
  FileUsageType.archive: {'zip', 'rar', '7z', 'tar', 'gz', 'bz2'},
  FileUsageType.code: {'dart', 'js', 'ts', 'py', 'java', 'kt'},
  FileUsageType.markup: {'html', 'xml'},
  FileUsageType.data: {'json', 'yaml', 'yml'},
};

/// Detects the usage type of the file from its path or filename.
/// Returns a [FileUsageType] such as image, document, etc.
/// 파일 경로 또는 이름을 통해 용도 타입을 반환합니다.
/// 이미지, 문서 등으로 분류된 [FileUsageType]을 반환합니다.
FileUsageType detectUsageType(String path) {
  final ext = getFileExtension(path) ?? "";
  for (final entry in _extensions.entries) {
    if (entry.value.contains(ext)) {
      return entry.key;
    }
  }
  return FileUsageType.unknown;
}
