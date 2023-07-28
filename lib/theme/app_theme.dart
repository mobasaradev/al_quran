import 'package:flutter/material.dart';
import 'package:quran/theme/app_text_theme.dart';

class AppTheme {
  static final _seedColor = ([...Colors.primaries]..shuffle()).first;
  static ThemeData themeData({
    Brightness? brightness,
    Color? seedColor,
  }) =>
      ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: brightness ?? Brightness.light,
          seedColor: seedColor ?? _seedColor,
        ),
        textTheme: AppTextTheme.common,
      );
}
