
import '../extensions/string_extensions.dart';

import '../../localization/generated/l10n.dart';

String? emailValidator(String? email) {
  if (email!.isEmpty) {
    return S.current.enterYourEmail;
  } else if (email.isEmailValid()) {
    return null;
  } else {
    return S.current.invalidEmailMessage;
  }
}

String? passwordValidator(String? password) {
  if (password!.isEmpty) {
    return S.current.enterYourPassword;
  } else if (password.isPasswordValid()) {
    return null;
  } else {
    return S.current.invalidPasswordMessage;
  }
}

String? confirmPasswordValidator(String? password, String? confirmPassword) {
  if (password!.isEmpty) {
    return S.current.enterYourPassword;
  } else if (password == confirmPassword) {
    return null;
  } else {
    return S.current.passwordsDoNotMatch;
  }
}

String? nameValidator(String? name) {
  if (name!.isEmpty) {
    return S.current.enterYourName;
  } else if (name.length > 2) {
    return null;
  } else {
    return S.current.yourNameIsTooShort;
  }
}