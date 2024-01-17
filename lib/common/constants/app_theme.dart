import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Lato',
    primaryColor: AppColor.primaryBlue,
    colorScheme: const ColorScheme(
      primary: AppColor.primaryBlue,
      secondary: AppColor.secondaryBlue,
      brightness: Brightness.light,
      onPrimary: AppColor.textWhite,
      onSecondary: AppColor.textWhite,
      error: AppColor.errorRed,
      onError: AppColor.white,
      background: AppColor.white,
      onBackground: AppColor.black,
      surface: Colors.white,
      onSurface: AppColor.black,
    ),
    textTheme: TextTheme(
      displayLarge: AppFont.textStyle(
        57,
        letterSpacing: -0.25,
        color: AppColor.textBlack,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: AppFont.textStyle(
        45,
        color: AppColor.textBlack,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: AppFont.textStyle(
        36,
        color: AppColor.textBlack,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: AppFont.textStyle(32, color: AppColor.textBlack),
      headlineMedium: AppFont.textStyle(28, color: AppColor.textBlack),
      headlineSmall: AppFont.textStyle(24, color: AppColor.textBlack),
      titleLarge: AppFont.textStyle(22),
      titleMedium: AppFont.textStyle(
        18,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      titleSmall: AppFont.textStyle(
        16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      labelLarge: AppFont.textStyle(14,
          fontWeight: FontWeight.w500, letterSpacing: 0.1),
      labelMedium: AppFont.textStyle(12,
          fontWeight: FontWeight.w500, letterSpacing: 0.5),
      labelSmall: AppFont.textStyle(11,
          fontWeight: FontWeight.w500, letterSpacing: 0.5),
      bodyLarge: AppFont.textStyle(16, letterSpacing: 0.15),
      bodyMedium: AppFont.textStyle(14, letterSpacing: 0.25),
      bodySmall: AppFont.textStyle(12, letterSpacing: 0.4),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
      ),
    ),
  );
}
