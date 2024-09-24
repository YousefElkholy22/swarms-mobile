import 'package:evnto/core/styles/hex_color.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Primary colors
  static const blue = Color(0xff7848FA);
  static Color purple = HexColor("#7848FA");

  /// Secondary colors
  static const lightBlue = Color(0xFFE8E4F3);
  static const darkGrey = Color(0xFF565656);
  static const grey = Color(0xFF7C7C7C);
  static const lightGrey = Color(0xFFDCDCDC);
  static const grey50 = Color.fromARGB(255, 250, 250, 250);

  /// text colors
  static const textDarkGrey = Color(0xff3D3D3D);
  static const textBlack = Color(0xff292929);

  /// Basic colors
  static const white = Colors.white;
  static const black = Colors.black;
  static const red = Colors.red;
  static const green = Colors.green;
  static Color opacityPurple = Colors.purple.withOpacity(0.035);

  static const transparent = Colors.transparent;
}
