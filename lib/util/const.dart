import 'package:flutter/material.dart';

class Constants {
  static String appName = "Furniture App";

  // Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.orange;
  static Color darkAccent = Colors.orangeAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: lightPrimary,
      secondary: lightAccent,
      surface: lightBG,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: darkPrimary,
      secondary: darkAccent,
      surface: darkBG,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
  );
}