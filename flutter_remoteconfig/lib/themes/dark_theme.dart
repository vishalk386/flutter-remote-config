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
    bottomAppBarColor: Color(0xFF4BCB1F),
    cardColor: const Color(0xaa311F06),
    dividerColor: const Color(0x1f6D42CE),
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      elevation: 1.0,
      centerTitle: true,

    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.white,
          fontFamily: "Rabata",
          fontSize: 30.0,
        ),
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        )
    )

);
