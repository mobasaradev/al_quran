import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({
    super.key,
    required this.surahDetails,
  });
  final SurahDetails surahDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: AutoSizeText(
            surahDetails.text.arab,
            textAlign: TextAlign.end,
            style: AppTextTheme.common.titleMedium?.copyWith(
              color: AppColors.tertiaryText,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              'Pronounce : \n${surahDetails.text.transliteration.en}',
              textAlign: TextAlign.left,
              style: AppTextTheme.common.bodyLarge?.copyWith(
                color: AppColors.secondaryText,
              ),
            ),
            const SizedBox(height: 20),
            AutoSizeText(
              'Meaning : \n${surahDetails.translation.en}',
              overflow: TextOverflow.fade,
              style: AppTextTheme.common.bodyMedium?.copyWith(
                color: AppColors.secondaryText,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Divider(color: AppColors.tertiaryText.withOpacity(0.4))
      ],
    );
  }
}
