import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.indigo.shade400;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // colors
    primaryColor: Colors.indigoAccent,

    // AppBar
    appBarTheme: const AppBarTheme(
      color: Colors.green,
      elevation: 0,
    ),

    // TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // card
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
    ),

    // floatingActionButtonTheme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
    ),

    // floatingActionButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue.shade200,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );
}
