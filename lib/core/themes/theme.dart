import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/core/constants/custom_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primarySwatch: CustomColors.primarySwatch,
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.bgColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: CustomColors.primaryColor,
      onPrimary: Colors.white,
      secondary: CustomColors.secondaryColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: CustomColors.bgColor,
      onBackground: CustomColors.primaryColor,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: CustomColors.bgColor,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      elevation: 0.3,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CustomColors.bgColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );
}
