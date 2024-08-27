extension CapitalizdString on String {
  String get capitalizd {
    String str = "";
    toLowerCase();
    List<String> list = split(" ");
    for (int i = 0; i < list.length; i++) {
      str +=
          "${list[i][0].toUpperCase()}${list[i].substring(1).toLowerCase()} ";
    }
    str = str.replaceRange(str.length - 1, str.length, "");
    return str;
  }
}

extension ToPiecesString on String {
  String toPieces() {
    int j = 0;
    int start = 0;
    StringBuffer result = StringBuffer();
    // use -1 because we use i+1 in it
    for (int i = 0; i < length - 1; i++) {
      j++;
      if (j > 100 && this[i] == "." && this[i + 1] == " ") {
        result.write(substring(start, i));
        result.write(".\n\n");
        // +2 to skip the "." and " " (space)
        start = i + 2;
        j = 0;
      }
    }
    return result.toString();
  }
}

extension PasswordValidator on String {
  bool isPasswordValid() {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(this);
  }

  bool hasLowerCase() {
    return RegExp(r'^(?=.*[a-z])').hasMatch(this);
  }

  bool hasUpperCase() {
    return RegExp(r'^(?=.*[A-Z])').hasMatch(this);
  }

  bool hasNumber() {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(this);
  }

  bool hasSpecialCharacter() {
    return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(this);
  }

  bool hasMinLength() {
    return RegExp(r'^(?=.{8,})').hasMatch(this);
  }
}

extension EmailValidator on String {
  bool isEmailValid() {
    return RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)+$")
        .hasMatch(this);
  }
}

extension PhoneNumberValidator on String {
  bool isPhoneNumberValid() {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(this);
  }
}

extension StringSecured on String {
  String get secured {
    StringBuffer str = StringBuffer();
    str.write(substring(0, 2));
    for (int i = 0; i < length; i++) {
      str.write("*");
    }
    str.write(substring(length - 2, length));
    return str.toString();
  }
}