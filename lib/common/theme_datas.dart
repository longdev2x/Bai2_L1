import 'package:flutter/material.dart';

class ThemeDatas {
  static final ThemeData lightTheme = ThemeData().copyWith(
    appBarTheme: const AppBarTheme().copyWith(
      titleTextStyle: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
    ),
    dialogTheme: const DialogTheme()
        .copyWith(),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme().copyWith(
      titleTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 22, 106, 231),
        foregroundColor: Colors.white,
      ),
    ),
  );
}
