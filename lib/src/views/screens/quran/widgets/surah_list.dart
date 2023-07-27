import 'package:flutter/material.dart';
import 'package:quran/src/models/surah.dart';
import 'package:quran/src/utils/app_colors.dart';
import 'package:quran/src/utils/app_fonts.dart';

class SurahList extends StatelessWidget {
  const SurahList({
    super.key,
    required this.transliteration, required this.name, required this.datum, required this.revelation,
  });

  final Name name;
  final Datum datum;
  final Revelation revelation;
  final Transliteration transliteration;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.tertiaryText.withOpacity(0.1),
            width: 2.0,
          ),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          alignment: Alignment.center,
          width: size.width * .1,
          height: size.height * .1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/iconLeading.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Text(
            datum.toString(),
            style: AppFonts.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        title: Text(
          transliteration.en,
          style: AppFonts.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColor.secondaryText,
          ),
        ),
        subtitle: Text(
          "Verse - $datum, $revelation",
          style: AppFonts.textTheme.bodySmall?.copyWith(
            color: AppColor.primaryText,
          ),
        ),
        trailing: Text(
          name.short,
          style: AppFonts.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColor.tertiaryText,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
