import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.josefinSans(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: GoogleFonts.josefinSans(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: GoogleFonts.josefinSans(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: GoogleFonts.josefinSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: GoogleFonts.josefinSans(
      fontSize: 20,
    ),
    labelSmall: GoogleFonts.josefinSans(
      fontSize: 16,
    ),
  );
}
