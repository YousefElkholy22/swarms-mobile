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
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue,
      surface: AppColors.white,
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
        color: AppColors.white, surfaceTintColor: AppColors.white),

    /// bottom sheet theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
    ),

    /// bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,

      // selectedItemColor: AppColors.blue,
      // unselectedItemColor: AppColors.darkGrey,
    ),
  );
}
