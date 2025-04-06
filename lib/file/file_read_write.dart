import 'dart:io';

/// =======================================
/// File Read and Write
/// 파일 읽기/쓰기 유틸리티
/// =======================================

/// Reads the contents of a text file and returns it as a String.
/// Throws an error if the file is not found or unreadable.
/// 텍스트 파일을 읽어 문자열로 반환합니다.
/// 파일이 없거나 읽을 수 없으면 예외를 발생시킵니다.
Future<String> readTextFile(String path) async {
  final file = File(path);
  if (!await file.exists()) {
    throw FileSystemException("File not found", path);
  }
  return await file.readAsString();
}

/// Writes the given text content to a file.
/// Overwrites the file if it already exists.
/// 주어진 문자열을 파일에 저장합니다.
/// 파일이 이미 존재하면 덮어씁니다.
Future<void> writeTextFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content);
}

/// Reads a file as a byte array.
/// Useful for binary files such as images, zip, etc.
/// 파일을 바이트 배열로 읽어옵니다.
/// 이미지, zip과 같은 바이너리 파일 처리에 유용합니다.
Future<List<int>> readBinaryFile(String path) async {
  final file = File(path);
  if (!await file.exists()) {
    throw FileSystemException("File not found", path);
  }
  return await file.readAsBytes();
}
