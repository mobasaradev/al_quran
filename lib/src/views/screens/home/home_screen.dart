import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/utils/app_colors.dart';
import 'package:quran/src/utils/app_fonts.dart';
import 'package:quran/src/views/widgets/appbar.dart';
import 'package:quran/src/views/widgets/card.dart';
import 'package:quran/src/views/widgets/container.dart';
import 'package:quran/src/views/widgets/hero.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Al-Quran Al-Kareem',
        automaticallyImplyLeading: false,
      ),
      body: CustomContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "السَّلاَمُ عَلَيْكُمْ",
                      style: AppFonts.textTheme.titleSmall?.copyWith(
                        color: AppColor.tertiaryText,
                      ),
                    ),
                    AutoSizeText(
                      "Assalamu’alaikum",
                      style: AppFonts.textTheme.titleSmall?.copyWith(
                        color: AppColor.secondaryText,
                      ),
                    ),
                  ],
                ),
                Text(
                  "12:45:19",
                  style: AppFonts.textTheme.labelLarge?.copyWith(
                    color: AppColor.tertiaryText.withOpacity(.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const HeroArea(
              title: 'Ar-Rahman',
              imageSource: 'assets/images/quran.png',
              color: AppColor.primaryHeroArea,
              textColor: AppColor.primaryHeroAreaText,
              backgroundImage: 'assets/images/heroBgS.png',
            ),
            const SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                clipBehavior: Clip.none,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 24,
                  crossAxisSpacing: 24,
                  mainAxisExtent: size.height * .24,
                ),
                itemBuilder: (context, index) {
                  List<String> bgImgUrls = [
                    "assets/images/cardBg.png",
                    "assets/images/cardBgP.png",
                    "assets/images/cardBgPk.png",
                    "assets/images/cardBgR.png",
                  ];
                  List<String> iconImgUrls = [
                    "assets/images/iconQuran.png",
                    "assets/images/iconHand.png",
                    "assets/images/iconkebla.png",
                    "assets/images/iconCalender.png",
                  ];
                  List<String> titleLst = [
                    "Quran",
                    "Dua and Zikir",
                    "Qibla",
                    "Calender",
                  ];
                  String bgImgUrl = bgImgUrls[index % bgImgUrls.length];
                  String iconImgUrl = iconImgUrls[index % iconImgUrls.length];
                  String title = titleLst[index % titleLst.length];
                  return CustomCard(
                    backgroundImage: bgImgUrl,
                    imageUrl: iconImgUrl,
                    title: title,
                    textColor: AppColor.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
