import 'package:flutter/material.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: 'Al-Quran Al-Kareem',
        automaticallyImplyLeading: false,
      ).toPreferredSize(),
      body: CustomContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GreetingText(),
                ClockWidget(),
              ],
            ),
            const SizedBox(height: 50),
            const FeaturedCard(
              title: 'Ar-Rahman',
              imageSource: AssetPaths.mosque,
              color: AppColors.primaryHeroArea,
              textColor: AppColors.primaryHeroAreaText,
              backgroundImage: AssetPaths.featuredBg2,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuranPage(),
                      ),
                    );
                  },
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
