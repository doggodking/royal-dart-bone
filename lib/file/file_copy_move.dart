import 'dart:io';

/// =======================================
/// File Copy & Move Utilities
/// 파일 복사 및 이동 유틸리티
/// =======================================

/// Copies a file from [sourcePath] to [destinationPath].
/// Overwrites the destination if it already exists.
/// [sourcePath] 경로의 파일을 [destinationPath]로 복사합니다.
/// 대상 파일이 이미 존재하면 덮어씁니다.
Future<void> copyFile(String sourcePath, String destinationPath) async {
  final sourceFile = File(sourcePath);
  if (!await sourceFile.exists()) {
    throw FileSystemException("Source file not found", sourcePath);
  }
  await sourceFile.copy(destinationPath);
}

/// Moves a file from [sourcePath] to [destinationPath].
/// Overwrites the destination if it already exists.
/// [sourcePath] 경로의 파일을 [destinationPath]로 이동합니다.
/// 대상 파일이 이미 존재하면 덮어씁니다.
Future<void> moveFile(String sourcePath, String destinationPath) async {
  final sourceFile = File(sourcePath);
  if (!await sourceFile.exists()) {
    throw FileSystemException("Source file not found", sourcePath);
  }
  await sourceFile.rename(destinationPath);
}
