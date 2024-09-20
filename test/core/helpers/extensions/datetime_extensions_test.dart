import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:evnto/core/helpers/extensions/datetime_extensions.dart';

void main() {
  group('DateFormant Extension', () {
    final dateTime = DateTime(2023, 4, 19, 12, 0);

    test('dayDayMonthFormat returns correct format', () {
      final formattedDate = dateTime.dayDayMonthFormat;
      expect(formattedDate, DateFormat("EEE d, MMM").format(dateTime));
    });

    test('monthDayYearFormat returns correct format', () {
      final formattedDate = dateTime.monthDayYearFormat;
      expect(formattedDate, DateFormat("MMM d, yyyy").format(dateTime));
    });

    test('hourMinute12Format returns correct format', () {
      final formattedTime = dateTime.hourMinute12Format;
      expect(formattedTime, DateFormat("hh:mm a").format(dateTime));
    });
  });
}