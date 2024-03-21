import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/utils/color_theme.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorTheme.primaryColor,
      fontFamily: GoogleFonts.roboto().fontFamily,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 44,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.5,
          color: ColorTheme.primaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
          color: ColorTheme.secondaryColor,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: ColorTheme.largeText,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          letterSpacing: 0.4,
          wordSpacing: 1.0,
          height: 1.7,
          fontWeight: FontWeight.w100,
          color: ColorTheme.secondaryColor,
        ),
        displayLarge: TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
          color: ColorTheme.largeText,
        ),
        displayMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: ColorTheme.mediumText),
        displaySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: ColorTheme.smallText),
        bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
            color: ColorTheme.secondaryColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16),
            backgroundColor: ColorTheme.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ));
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: DarkColorTheme.primaryColor,
    fontFamily: GoogleFonts.roboto().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 44,
        fontWeight: FontWeight.w400,
        color: DarkColorTheme.primaryColor,
      ),
      titleMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        color: ColorTheme.secondaryColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
        wordSpacing: 1.0,
        height: 1.7,
        // fontWeight: FontWeight.normal,
        color: ColorTheme.secondaryColor,
      ),
      displayLarge: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: DarkColorTheme.largeText,
      ),
      displayMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: DarkColorTheme.mediumText),
      displaySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: DarkColorTheme.smallText),
    ),
  );
}
