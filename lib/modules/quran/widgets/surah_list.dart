import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class SurahList extends StatelessWidget {
  const SurahList({
    super.key,
    required this.transliteration,
    required this.name,
    required this.revelation,
    required this.surah,
  });

  final Surah surah;
  final Name name;
  final Revelation revelation;
  final Transliteration transliteration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.tertiaryText.withOpacity(0.1),
            width: 2.0,
          ),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          alignment: Alignment.center,
          width: context.mediaQueryData.size.width * .1,
          height: context.mediaQueryData.size.height * .1,
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
        title: AutoSizeText(
          transliteration.en,
          style: context.themeData.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryText,
          ),
        ),
        subtitle: AutoSizeText(
          "Verse - ${surah.number}, ${revelation.arab}",
          style: context.themeData.textTheme.bodySmall?.copyWith(
            color: AppColors.primaryText,
          ),
        ),
        trailing: AutoSizeText(
          name.short,
          style: context.themeData.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.tertiaryText,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
