import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/utils/utils.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required this.title,
    required this.imageSource,
    required this.color,
    required this.textColor,
    required this.backgroundImage,
    // required this.surah,
  });
  final Color color;
  final Color textColor;
  final String title;
  final String imageSource;
  final String backgroundImage;

  // from Model
  // final Surah surah;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: context.mediaQueryData.size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          opacity: 0.8,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                width: context.mediaQueryData.size.width * .1,
                height: context.mediaQueryData.size.height * .05,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetPaths.iconLeading),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: AutoSizeText(
                  '1',
                  style: context.themeData.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              AutoSizeText(
                'Surah name ar',
                style: context.themeData.textTheme.titleMedium?.copyWith(
                  color: textColor,
                ),
              ),
              AutoSizeText(
                'Surah name en',
                style: context.themeData.textTheme.bodyLarge?.copyWith(
                  color: textColor,
                ),
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'revelation - numberOfVerse Verse',
                    style: context.themeData.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: -60,
            right: -30,
            child: Image.asset(
              imageSource,
              width: context.mediaQueryData.size.width * .45,
            ),
          ),
        ],
      ),
    );
  }
}
