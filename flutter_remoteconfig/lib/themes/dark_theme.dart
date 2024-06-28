import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
  primaryColor: Colors.blue,
  primaryColorLight: Colors.blueAccent,
  primaryColorDark: Colors.black26,
  canvasColor: Colors.amberAccent,
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color(0xaa311F06),
  dividerColor: const Color(0x1f6D42CE),
  appBarTheme: const AppBarTheme(
    color: Colors.teal,
    elevation: 1.0,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.white,
      fontFamily: "Rabata",
      fontSize: 30.0,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFF4BCB1F),
  ),
);
