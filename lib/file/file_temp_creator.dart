/// =======================================
/// File Temp Creator
/// 임시 파일/폴더 생성기
/// =======================================

import 'dart:io';

/// Creates a temporary file in the system's temporary directory.
/// 시스템의 임시 디렉토리에 임시 파일을 생성합니다.
/// Returns the created [File].
/// 생성된 [File] 객체를 반환합니다.
Future<File> createTempFile() async {
  try {
    final tempDir = Directory.systemTemp;
    final tempFile =
        await File(
          '${tempDir.path}/temp_${DateTime.now().millisecondsSinceEpoch}.txt',
        ).create();
    return tempFile;
  } catch (e) {
    rethrow; // Propagate the error to be handled by the caller
  }
}

/// Creates a temporary directory in the system's temporary directory.
/// 시스템의 임시 디렉토리에 임시 폴더를 생성합니다.
/// Returns the created [Directory].
/// 생성된 [Directory] 객체를 반환합니다.
Future<Directory> createTempDirectory() async {
  try {
    final tempDir = Directory.systemTemp;
    final tempFolder =
        await Directory(
          '${tempDir.path}/temp_${DateTime.now().millisecondsSinceEpoch}',
        ).create();
    return tempFolder;
  } catch (e) {
    rethrow; // Propagate the error to be handled by the caller
  }
}
