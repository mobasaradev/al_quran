import 'package:flutter/material.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';
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
              titleAr: "title Ar",
              imageSource: AssetPaths.quran,
              backgroundImage: AssetPaths.featuredBg1,
              number: 114,
              titleEn: 'title En',
              revelation: 'revelation',
              numberOfVerse: '7',
            ),
          ],
        ),
      ),
    );
  }
}
