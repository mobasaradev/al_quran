import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class CustomListOfSurah extends StatelessWidget {
  const CustomListOfSurah({super.key, required this.surah});

  final Surah surah;

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
          surah.name.transliteration.en,
          style: context.themeData.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryText,
          ),
        ),
        subtitle: AutoSizeText(
          "Verse - ${surah.numberOfVerses}, ${surah.revelation.arab}",
          style: context.themeData.textTheme.bodySmall?.copyWith(
            color: AppColors.primaryText,
          ),
        ),
        trailing: AutoSizeText(
          surah.name.short,
          style: context.themeData.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.tertiaryText,
          ),
        ),
        onTap: () {
          context
              .read<SurahDetailsBloc>()
              .add(SurahDetailsEventFetched(surah.number));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurahPage(
                surah: surah,
              ),
            ),
          );
        },
      ),
    );
  }
}
