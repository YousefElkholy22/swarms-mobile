import 'package:flutter_test/flutter_test.dart';
import 'package:evnto/core/helpers/extensions/double_extensions.dart';

void main() {
  group('DoubleExtension', () {
    test('orAbout returns integer when the number is whole', () {
      expect(5.orAbout(), 5);
      expect(10.0.orAbout(), 10);
    });

    test('orAbout returns double with two decimal places when the number is not whole', () {
      expect(5.123.orAbout(), 5.12);
      expect(10.567.orAbout(), 10.57);
    });

    test('orAbout handles negative numbers correctly', () {
      expect((-5.123).orAbout(), -5.12);
      expect((-10.567).orAbout(), -10.57);
      expect((-10.0).orAbout(), -10);
    });

    test('orAbout handles zero correctly', () {
      expect(0.orAbout(), 0);
      expect(0.0.orAbout(), 0);
    });
  });
}