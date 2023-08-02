import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required this.imageSource,
    required this.backgroundImage,
    required this.surah,
  });
  final Surah surah;
  final String imageSource;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: context.mediaQueryData.size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          opacity: 0.8,
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
              color: AppColors.tertiaryText,
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: context.mediaQueryData.size.width * .1,
                  height: context.mediaQueryData.size.height * .05,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetPaths.iconLeading),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: AutoSizeText(
                    surah.number.toString(),
                    style: context.themeData.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                AutoSizeText(
                  surah.name.short,
                  style: context.themeData.textTheme.titleSmall?.copyWith(
                    color: AppColors.primaryHeroAreaText,
                  ),
                ),
                AutoSizeText(
                  surah.name.transliteration.en,
                  style: context.themeData.textTheme.bodyMedium?.copyWith(
                    color: AppColors.primaryHeroAreaText,
                  ),
                ),
                const SizedBox(height: 7),
                AutoSizeText(
                  ' ${surah.numberOfVerses} Verse - ${surah.revelation.arab} ',
                  style: context.themeData.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryHeroAreaText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
