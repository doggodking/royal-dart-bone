/// =======================================
/// File Size Formatter
/// 파일 크기 포맷터
/// =======================================

/// Converts the given size in bytes to a human-readable format (KB, MB, GB, etc.).
/// 주어진 바이트 크기를 사람이 읽기 쉬운 형식(KB, MB, GB 등)으로 변환합니다.
/// Example: 1048576 bytes → "1.00 MB"
String formatFileSize(int bytes) {
  const kb = 1024;
  const mb = kb * 1024;
  const gb = mb * 1024;
  const tb = gb * 1024;

  if (bytes >= tb) {
    return '${(bytes / tb).toStringAsFixed(2)} TB';
  } else if (bytes >= gb) {
    return '${(bytes / gb).toStringAsFixed(2)} GB';
  } else if (bytes >= mb) {
    return '${(bytes / mb).toStringAsFixed(2)} MB';
  } else if (bytes >= kb) {
    return '${(bytes / kb).toStringAsFixed(2)} KB';
  } else {
    return '$bytes Bytes';
  }
}
