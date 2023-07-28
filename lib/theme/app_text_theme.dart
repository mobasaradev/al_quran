import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();
  static final _textStyle = GoogleFonts.josefinSans(
    fontWeight: FontWeight.bold,
  );

  static TextTheme common = TextTheme(
    headlineLarge: _textStyle.copyWith(
      fontSize: 30,
    ),
    headlineMedium: _textStyle.copyWith(
      fontSize: 28,
    ),
    headlineSmall: _textStyle.copyWith(
      fontSize: 26,
    ),
    titleLarge: _textStyle.copyWith(
      fontSize: 24,
    ),
    titleMedium: _textStyle.copyWith(
      fontSize: 22,
    ),
    titleSmall: _textStyle.copyWith(
      fontSize: 20,
    ),
    bodyLarge: _textStyle.copyWith(fontSize: 18, fontWeight: FontWeight.normal),
    bodyMedium:
        _textStyle.copyWith(fontSize: 16, fontWeight: FontWeight.normal),
    bodySmall: _textStyle.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
  );
}
