import 'package:intl/intl.dart';

class FormatDate {
  static String formatDateTime(String? stringDate) {
    final parsedDate = DateTime.parse(stringDate!);
    final convertedDate = DateFormat('yyyy/MM/dd').format(parsedDate);
    return convertedDate;
  }

  static String formatDateTimeDash(String? stringDate) {
    final parsedDate = DateTime.parse(stringDate!);
    final convertedDate = DateFormat('yyyy-MM-dd').format(parsedDate);
    return convertedDate;
  }
}
