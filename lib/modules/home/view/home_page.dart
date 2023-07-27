import 'package:flutter/material.dart';
import 'package:quran/modules/home/widgets/greating.dart';
import 'package:quran/shared/widgets/appbar.dart';
import 'package:quran/shared/widgets/card.dart';
import 'package:quran/shared/widgets/container.dart';
import 'package:quran/shared/widgets/hero.dart';
import 'package:quran/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const GreetingWidgets(),
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
                  mainAxisExtent: size.height * .215,
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
                    textColor: AppColor.secondaryText,
                    
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
