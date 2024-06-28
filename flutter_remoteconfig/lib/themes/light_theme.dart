import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
  primaryColor: const Color(0xffEDD5B3),
  primaryColorLight: const Color(0x1aF5E0C3),
  primaryColorDark: const Color(0xff936F3E),
  canvasColor: const Color(0xffE09E45),
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color(0xaaF5E0C3),
  dividerColor: const Color(0x1f6D42CE),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFCE48B1),
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontFamily: "Rabata",
      fontSize: 30.0,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.red,
  ),
);
