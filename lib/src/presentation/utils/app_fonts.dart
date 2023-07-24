import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.josefinSans(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: GoogleFonts.barlow(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: GoogleFonts.barlow(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  );
}
