import 'package:flutter/material.dart';
import 'package:quran/src/presentation/utils/app_colors.dart';
import 'package:quran/src/presentation/utils/app_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Quran",
          style: AppFonts.textTheme.titleLarge?.copyWith(
            color: AppColor.primaryText,
          ),
        ),
      ),
    );
  }
}
