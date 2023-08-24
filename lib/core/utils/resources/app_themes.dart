import 'package:flutter/material.dart';

enum AppTheme { light, dark }

class MainTheme {
  MainTheme._();

  static const _textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
    ),
    headline2: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0,
    ),
    headline4: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
    ),
  );

  static final Map<AppTheme, ThemeData> appThemeData = {
    AppTheme.light: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF8BC34A),
        ),
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.light,
        // fontFamily: MainAssets.fontMedium,
        // colorScheme: const ColorScheme(
        //   primary: Color(0xff007dc6),
        //   secondary: Color(0xfffff100),
        //   surface: Color(0xffffffff),
        //   background: Color(0xffffffff),
        //   error: Color(0xffef1f28),
        //   onPrimary: Color(0xffffffff),
        //   onSecondary: Color(0xff231f20),
        //   onSurface: Color(0xff231f20),
        //   onBackground: Color(0xff231f20),
        //   onError: Color(0xffffffff),
        //   brightness: Brightness.light,
        // ),
        primaryColor: const Color(0xFF8BC34A),
        primaryTextTheme: _textTheme),
    AppTheme.dark: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xff045041),
        ),
        brightness: Brightness.dark,
        // fontFamily: MainAssets.fontMedium,
        // colorScheme: const ColorScheme(
        //   primary: Color(0xff007dc6),
        //   secondary: Color(0xfffff100),
        //   surface: Color(0xff231f20),
        //   background: Color(0xff231f20),
        //   error: Color(0xffef1f28),
        //   onPrimary: Color(0xff231f20),
        //   onSecondary: Color(0xff231f20),
        //   onSurface: Color(0xffffffff),
        //   onBackground: Color(0xffffffff),
        //   onError: Color(0xffffffff),
        //   brightness: Brightness.dark,
        // ),
        primaryColor: const Color(0xff045041),
        primaryTextTheme: _textTheme),
  };
}
