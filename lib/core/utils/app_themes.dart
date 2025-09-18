import 'package:flutter/material.dart';

class AppThemes {
  // light theme
  static final light = ThemeData(
    primaryColor: Color(0xffff5722),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffff5722),
      primary: Color(0xffff5722),
      brightness: Brightness.light,
      surface: Colors.white,
    ),
    cardColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xffff5722),
      unselectedItemColor: Colors.grey
    )
  );
  // dark theme
  static final dark = ThemeData(
    primaryColor: Color(0xffff5722),
    scaffoldBackgroundColor: Color(0xFF121212),
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffff5722),
      primary: Color(0xffff5722),
      brightness: Brightness.dark,
      surface: Color(0xFF121212),
    ),
    cardColor: Color(0xFF1E1E1E),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: Color(0xffff5722),
      unselectedItemColor: Colors.grey
    )
  );
}
