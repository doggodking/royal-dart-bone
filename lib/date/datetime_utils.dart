import 'package:intl/intl.dart';

/// Formats a [DateTime] object to a string based on the provided format.
/// 날짜를 지정된 포맷 문자열로 변환합니다.
///
/// [date]: DateTime object to format.
/// [format]: DateFormat pattern (e.g., 'yyyy-MM-dd').
///
/// Example:
/// formatDate(DateTime.now(), 'yyyy-MM-dd'); // '2025-04-06'
String formatDate(DateTime date, String format) {
  return DateFormat(format).format(date);
}

/// Adds a specified number of days to a [DateTime] object.
/// 날짜에 특정 일 수(day)를 더한 결과를 반환합니다.
///
/// [date]: Original DateTime object.
/// [days]: Number of days to add.
///
/// Example:
/// addDays(DateTime(2025, 4, 6), 5); // DateTime(2025, 4, 11)
DateTime addDays(DateTime date, int days) {
  return date.add(Duration(days: days));
}

/// Subtracts a specified number of days from a [DateTime] object.
/// 날짜에서 특정 일 수(day)를 뺀 결과를 반환합니다.
///
/// [date]: Original DateTime object.
/// [days]: Number of days to subtract.
///
/// Example:
/// subtractDays(DateTime(2025, 4, 6), 5); // DateTime(2025, 4, 1)
DateTime subtractDays(DateTime date, int days) {
  return date.subtract(Duration(days: days));
}

/// Safely parses a string into a [DateTime] object.
/// 날짜 문자열을 DateTime으로 안전하게 파싱합니다. 실패하면 null을 반환합니다.
///
/// [dateString]: Date string to parse.
/// [format]: DateFormat pattern for parsing.
///
/// Example:
/// parseDateSafe('2025-04-06', 'yyyy-MM-dd'); // DateTime(2025, 4, 6)
/// parseDateSafe('invalid', 'yyyy-MM-dd'); // null
DateTime? parseDateSafe(String dateString, String format) {
  try {
    return DateFormat(format).parseStrict(dateString);
  } catch (_) {
    return null;
  }
}

/// Checks if a given date is a weekend.
/// 주어진 날짜가 주말인지 확인합니다.
///
/// [date]: DateTime object to check.
///
/// Example:
/// isWeekend(DateTime(2025, 4, 6)); // true
bool isWeekend(DateTime date) {
  return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
}

/// Calculates the number of days between two dates.
/// 두 날짜 사이의 일 수를 계산합니다.
///
/// [start]: Start date.
/// [end]: End date.
///
/// Example:
/// daysBetween(DateTime(2025, 4, 1), DateTime(2025, 4, 6)); // 5
int daysBetween(DateTime start, DateTime end) {
  return end.difference(start).inDays;
}

/// Returns the start of the day for a given date.
/// 주어진 날짜의 시작을 반환합니다.
///
/// [date]: DateTime object.
///
/// Example:
/// startOfDay(DateTime(2025, 4, 6, 15, 30)); // DateTime(2025, 4, 6, 0, 0)
DateTime startOfDay(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

/// Returns the end of the day for a given date.
/// 주어진 날짜의 끝을 반환합니다.
///
/// [date]: DateTime object.
///
/// Example:
/// endOfDay(DateTime(2025, 4, 6, 15, 30)); // DateTime(2025, 4, 6, 23, 59, 59, 999)
DateTime endOfDay(DateTime date) {
  return DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
}

/// 주어진 날짜로부터 오늘까지의 D-Day를 반환합니다.
/// [targetDate]: 목표 날짜.
///
/// 예시:
/// calculateDDayWithDateTime(DateTime(2025, 4, 6)); // D-일 수
int calculateDDayWithDateTime(DateTime targetDate) {
  final today = DateTime.now();
  return targetDate.difference(today).inDays;
}

/// 주어진 년, 월, 일로부터 오늘까지의 D-Day를 반환합니다.
/// [year]: 목표 년도.
/// [month]: 목표 월.
/// [day]: 목표 일.
///
/// 예시:
/// calculateDDay(2025, 4, 6); // D-일 수
int calculateDDay(int year, int month, int day) {
  final targetDate = DateTime(year, month, day);
  final today = DateTime.now();
  return targetDate.difference(today).inDays;
}
