import 'package:intl/intl.dart';

extension DateFormant on DateTime {
  /// Ex: "Mon, 19, Apr"
  String get dayDayMonthFormat {
    return DateFormat("EEE d, MMM").format(this);
  }

  /// Ex: "Apr 19, 2023"
  String get monthDayYearFormat {
    return DateFormat("MMM d, yyyy").format(this);
  }

  /// Ex: "12:00 PM"
  String get hourMinute12Format {
    return DateFormat("hh:mm a").format(this);
  }
}