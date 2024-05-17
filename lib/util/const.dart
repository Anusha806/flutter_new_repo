import 'package:flutter/material.dart';

class Constants {
  static String appName = "Foody Bite";

  // Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color ratingBG = Colors.yellow[600]!;

  static ThemeData lightTheme = ThemeData(
    // backgroundColor: lightBG,
    primaryColor: lightPrimary,
    colorScheme: ColorScheme.light(
      primary: lightPrimary,
      secondary: lightAccent,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: darkPrimary, // Change to darkPrimary for light background
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // backgroundColor: darkBG,
    primaryColor: darkPrimary,
    colorScheme: ColorScheme.dark(
      primary: darkPrimary,
      secondary: darkAccent,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: lightPrimary, // Change to lightPrimary for dark background
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

}
