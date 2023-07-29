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
    this.surahList,
  });

  final String imageSource;
  final String backgroundImage;
  final SurahList? surahList;

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
              surahList!.number.toString(),
              style: context.themeData.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5),
          AutoSizeText(
            surahList!.name.short,
            style: context.themeData.textTheme.titleSmall?.copyWith(
              color: AppColors.primaryHeroAreaText,
            ),
          ),
          AutoSizeText(
            surahList!.name.transliteration.en,
            style: context.themeData.textTheme.bodyMedium?.copyWith(
              color: AppColors.primaryHeroAreaText,
            ),
          ),
          const SizedBox(height: 7),
          AutoSizeText(
            '${surahList!.revelation} - ${surahList!.numberOfVerses} Verse',
            style: context.themeData.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.secondaryHeroAreaText,
            ),
          ),
        ],
      ),
    );
  }
}
