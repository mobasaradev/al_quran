import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/theme/theme.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AutoSizeText(
              "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
              style: AppTextTheme.common.titleMedium?.copyWith(
                color: AppColors.tertiaryText,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Bismillaahir Rahmaanir Raheem",
                  textAlign: TextAlign.left,
                  style: AppTextTheme.common.bodyLarge?.copyWith(
                    color: AppColors.secondaryText,
                  ),
                ),
                AutoSizeText(
                  "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                  overflow: TextOverflow.fade,
                  style: AppTextTheme.common.bodyMedium?.copyWith(
                    color: AppColors.secondaryText,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
