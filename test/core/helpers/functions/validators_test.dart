import 'dart:ui';

import 'package:evnto/core/localization/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:evnto/core/helpers/functions/validators.dart';

void main() {
  setUp(() {
    // Initialize localization
    S.load(const Locale('en'));
  });

  group('Email Validator', () {
    test('returns error message when email is empty', () {
      expect(emailValidator(''), S.current.enterYourEmail);
    });

    test('returns error message when email is invalid', () {
      expect(emailValidator('invalid-email'), S.current.invalidEmailMessage);
    });

    test('returns null when email is valid', () {
      expect(emailValidator('test@example.com'), null);
    });
  });

  group('Password Validator', () {
    test('returns error message when password is empty', () {
      expect(passwordValidator(''), S.current.enterYourPassword);
    });

    test('returns error message when password is invalid', () {
      expect(passwordValidator('short'), S.current.invalidPasswordMessage);
    });

    test('returns null when password is valid', () {
      expect(passwordValidator('ValidPassword123'), null);
    });
  });

  group('Confirm Password Validator', () {
    test('returns error message when password is empty', () {
      expect(confirmPasswordValidator('', 'password'), S.current.enterYourPassword);
    });

    test('returns error message when passwords do not match', () {
      expect(confirmPasswordValidator('password1', 'password2'), S.current.passwordsDoNotMatch);
    });

    test('returns null when passwords match', () {
      expect(confirmPasswordValidator('password', 'password'), null);
    });
  });

  group('Name Validator', () {
    test('returns error message when name is empty', () {
      expect(nameValidator(''), S.current.enterYourName);
    });

    test('returns error message when name is too short', () {
      expect(nameValidator('Al'), S.current.yourNameIsTooShort);
    });

    test('returns null when name is valid', () {
      expect(nameValidator('Alice'), null);
    });
  });
}