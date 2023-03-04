import 'package:flutter/material.dart';
import 'package:lanceme_figma/resources/color_manager.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: ColorManager.primary,
    primaryColor: ColorManager.primary,
    scaffoldBackgroundColor: ColorManager.white,
    bottomAppBarColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.primary),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonColor: Colors.deepPurple,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}