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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        AutoSizeText(
          surahDetails.text.arab,
          style: AppTextTheme.common.titleMedium?.copyWith(
            color: AppColors.tertiaryText,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  surahDetails.text.transliteration.en,
                  textAlign: TextAlign.left,
                  style: AppTextTheme.common.bodyLarge?.copyWith(
                    color: AppColors.secondaryText,
                  ),
                ),
                AutoSizeText(
                  surahDetails.translation.en,
                  overflow: TextOverflow.fade,
                  style: AppTextTheme.common.bodyMedium?.copyWith(
                    color: AppColors.secondaryText,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Divider(color: AppColors.tertiaryText.withOpacity(0.3))
      ],
    );
  }
}
