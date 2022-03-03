import 'package:flutter/material.dart';

class TextStyleX {
  static const style = TextStyle(
    fontFamily: 'Vazir',
    fontSize: 14,
  );
  static var appBarStyle = const TextStyle(
    fontWeight: FontWeight.w300,
    color: Colors.blue,
  );
  static const boldStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}

class ThemeX {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    primaryColorDark: const Color(0xFFFEA82F),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.5,
      centerTitle: true,
    ),
    accentIconTheme: const IconThemeData(
      color: Colors.blue,
    ),
    primaryTextTheme: const TextTheme(
      headline6: TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
    ),
    fontFamily: 'Vazir',
    buttonColor: Colors.blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.amber),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    ),
    brightness: Brightness.light,
    canvasColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.blue),
  );
}
