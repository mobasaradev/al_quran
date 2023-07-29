import 'package:flutter/material.dart';
import 'package:quran/modules/surah/surah.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        automaticallyImplyLeading: true,
        icon: Icons.arrow_back_ios,
        onPressed: () => Navigator.pop(context),
      ).toPreferredSize(),
      body: const CustomContainer(
        child: Column(
          children: [
            HeaderCard(
              title: 'title',
              imageSource: AssetPaths.quran,
              color: AppColors.secondaryHeroArea,
              textColor: AppColors.secondaryHeroAreaText,
              backgroundImage: AssetPaths.featuredBg1,
            )
          ],
        ),
      ),
    );
  }
}
