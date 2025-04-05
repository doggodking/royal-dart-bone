import 'dart:io';

/// =======================================
/// File Name Modifier
/// 파일 이름 수정기
/// =======================================
/// Renames a file to avoid name duplication by appending a number (e.g. file1.txt, file2.txt).
/// Returns the renamed [File] object. This helps when saving files without overwriting existing ones.
///
/// 파일 이름 중복을 피하기 위해 번호를 추가하여 파일명을 변경합니다 (예: file1.txt, file2.txt).
/// 기존 파일을 덮어쓰지 않고 저장할 수 있도록 돕습니다.

Future<File> renameFileToUniqueName(File file) async {
  final dirPath = file.parent.path;
  final fullName = file.path.split(Platform.pathSeparator).last;

  final dotIndex = fullName.lastIndexOf('.');
  final hasExtension = dotIndex != -1;

  final baseName = hasExtension ? fullName.substring(0, dotIndex) : fullName;
  final extension = hasExtension ? fullName.substring(dotIndex) : '';

  int counter = 1;
  late String newPath;

  do {
    final newFileName = '$baseName$counter$extension';
    newPath = '$dirPath${Platform.pathSeparator}$newFileName';
    counter++;
  } while (await File(newPath).exists());

  return await file.rename(newPath);
}
