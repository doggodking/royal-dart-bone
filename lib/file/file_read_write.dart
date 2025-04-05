import 'dart:io';

/// =======================================
/// File Read and Write
/// 파일 읽기/쓰기 유틸리티
/// =======================================

/// Reads the contents of a text file at the given path.
/// Returns the content as a String or throws an error if the file is not found.
/// 주어진 경로의 텍스트 파일 내용을 읽어옵니다.
/// 파일을 찾을 수 없거나 읽는 데 실패하면 에러를 발생시킵니다.
Future<String> readTextFile(String path) async {
  try {
    final file = File(path);
    if (await file.exists()) {
      return await file.readAsString();
    } else {
      throw FileSystemException("File not found", path);
    }
  } catch (e) {
    rethrow; // Propagate the error to be handled by the caller
  }
}

/// Writes the given content to a text file at the given path.
/// If the file already exists, it will be overwritten.
/// 주어진 경로에 텍스트 파일을 작성합니다.
/// 파일이 이미 존재하면 덮어씁니다.
Future<void> writeTextFile(String path, String content) async {
  try {
    final file = File(path);
    await file.writeAsString(content);
  } catch (e) {
    rethrow; // Propagate the error to be handled by the caller
  }
}
