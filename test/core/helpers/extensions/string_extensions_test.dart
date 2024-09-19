import 'package:flutter_test/flutter_test.dart';
import 'package:evnto/core/helpers/extensions/string_extensions.dart';

void main() {
  group('CapitalizdString Extension', () {
    test('capitalizd should capitalize each word in the string', () {
      expect('hello world'.capitalizd, 'Hello World');
      expect('flutter is awesome'.capitalizd, 'Flutter Is Awesome');
    });
  });

  group('ToPiecesString Extension', () {
    test('toPieces should split long text into pieces', () {
      String longText = 'This is a long text. ' * 10;
      String expected = 'This is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. \n\nThis is a long text. ';
      expect(longText.toPieces(), expected);
    });
  });

  group('PasswordValidator Extension', () {
    test('isPasswordValid should validate password correctly', () {
      expect('Password1!'.isPasswordValid(), true);
      expect('password'.isPasswordValid(), false);
    });

    test('hasLowerCase should check for lowercase letters', () {
      expect('Password'.hasLowerCase(), true);
      expect('PASSWORD'.hasLowerCase(), false);
    });

    test('hasUpperCase should check for uppercase letters', () {
      expect('Password'.hasUpperCase(), true);
      expect('password'.hasUpperCase(), false);
    });

    test('hasNumber should check for numbers', () {
      expect('Password1'.hasNumber(), true);
      expect('Password'.hasNumber(), false);
    });

    test('hasSpecialCharacter should check for special characters', () {
      expect('Password!'.hasSpecialCharacter(), true);
      expect('Password'.hasSpecialCharacter(), false);
    });

    test('hasMinLength should check for minimum length', () {
      expect('Password'.hasMinLength(), true);
      expect('Pass'.hasMinLength(), false);
    });
  });

  group('EmailValidator Extension', () {
    test('isEmailValid should validate email correctly', () {
      expect('test@example.com'.isEmailValid(), true);
      expect('invalid-email'.isEmailValid(), false);
    });
  });

  group('PhoneNumberValidator Extension', () {
    test('isPhoneNumberValid should validate phone number correctly', () {
      expect('01012345678'.isPhoneNumberValid(), true);
      expect('1234567890'.isPhoneNumberValid(), false);
    });
  });

  group('StringSecured Extension', () {
    test('secured should mask the string correctly', () {
      expect('1234567890'.secured, '12********90');
      expect('ab'.secured, 'ab');
    });
  });
}