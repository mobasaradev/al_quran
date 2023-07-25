import 'package:flutter/material.dart';
import 'package:quran/src/utils/app_colors.dart';

class AppTheme {
  static const TextTheme _textTheme = TextTheme(
    
    
  );

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    textTheme: _textTheme,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),

    // Define other theme properties as needed
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blueGrey,
      textTheme: ButtonTextTheme.primary,
    ),

    // Define other theme properties as needed
  );
}
