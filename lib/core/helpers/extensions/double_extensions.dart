extension DoubleExtension on num {
  num orAbout() {
    if ((this * 10) % 10 == 0) {
      return toInt();
    }
    return double.parse(toStringAsFixed(2));
  }
}