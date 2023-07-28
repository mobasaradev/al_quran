import 'package:flutter/material.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/asset_paths.dart';
import 'package:quran/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Al-Quran Al-Kareem',
        automaticallyImplyLeading: false,
      ).toPreferredSize(),
      body: CustomContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingWidgets(),
            const SizedBox(height: 50),
            const FeaturedCard(
              title: 'Ar-Rahman',
              imageSource: AssetPaths.quran,
              color: AppColors.primaryHeroArea,
              textColor: AppColors.primaryHeroAreaText,
              backgroundImage: AssetPaths.featuredBg1,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                  backgroundImage: AssetPaths.cardBg1,
                  imageUrl: AssetPaths.iconQuran,
                  title: 'Quran',
                  textColor: AppColors.secondaryText,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuranPage(),
                    ),
                  ),
                ),
                const CustomCard(
                  backgroundImage: AssetPaths.cardBg2,
                  imageUrl: AssetPaths.iconHand,
                  title: 'Dua and Zikir',
                  textColor: AppColors.secondaryText,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                  backgroundImage: AssetPaths.cardBg3,
                  imageUrl: AssetPaths.iconKebla,
                  title: 'Qibla',
                  textColor: AppColors.secondaryText,
                ),
                CustomCard(
                  backgroundImage: AssetPaths.cardBg4,
                  imageUrl: AssetPaths.iconCalender,
                  title: 'Calender',
                  textColor: AppColors.secondaryText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
