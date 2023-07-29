import 'package:flutter/material.dart';
import 'package:quran/modules/surah/widgets/surah_card.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: 'Surah name en',
        automaticallyImplyLeading: true,
        icon: Icons.arrow_back_ios,
        onPressed: () => Navigator.pop(context),
      ).toPreferredSize(),
      body: const CustomContainer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              FeaturedCard(
                title: "Ar-Rahman",
                imageSource: AssetPaths.mosque,
                color: AppColors.black,
                textColor: AppColors.primaryHeroAreaText,
                backgroundImage: AssetPaths.featuredBg2,
              ),
              SizedBox(height: 20),
              SurahCard(),
            ],
          ),
        ),
      ),
    );
  }
}
