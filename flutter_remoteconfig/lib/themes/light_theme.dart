
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
    primaryColor: const Color(0xffEDD5B3),
    primaryColorLight: Color(0x1aF5E0C3),
    primaryColorDark: Color(0xff936F3E),
    canvasColor: const Color(0xffE09E45),
    scaffoldBackgroundColor: Colors.white,
    bottomAppBarColor: Colors.red,
    cardColor: Color(0xaaF5E0C3),
    dividerColor: Color(0x1f6D42CE),
    appBarTheme: AppBarTheme(
      color: Color(0xFFCE48B1),
      centerTitle: true,

    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontFamily: "Rabata",
          fontSize: 30.0,
        ),
        bodyText1: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        )
    )
);

