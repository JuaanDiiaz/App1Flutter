import 'package:flutter/material.dart';

class AppTheme{
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0.0,
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
    textButtonTheme:  TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(primaryColor),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 2,
      foregroundColor: Colors.white
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        foregroundColor: Colors.white
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
      ),
      floatingLabelStyle: TextStyle(
        color: primaryColor,
      ),
      enabledBorder: OutlineInputBorder(  
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 0.0,
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
    textButtonTheme:  TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(primaryColor),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 2
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        foregroundColor: Colors.black
      ),
    ),
  );
}