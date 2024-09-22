import 'package:evnto/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  AppThemes._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: "Quicksand",

    /// Colors
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue,
    ),

    /// App Bar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light, // IOS
        statusBarColor: AppColors.white, // Andriod
        statusBarIconBrightness: Brightness.dark, // Android
      ),
    ),

    /// Card Theme
    cardTheme: const CardTheme(
      color: AppColors.white,
      surfaceTintColor: AppColors.white
    ),
  );
}
