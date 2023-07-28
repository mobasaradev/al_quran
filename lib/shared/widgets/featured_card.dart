import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/utils/utils.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({
    super.key,
    required this.title,
    required this.imageSource,
    required this.color,
    required this.textColor,
    required this.backgroundImage,
  });
  final Color color;
  final Color textColor;
  final String title;
  final String imageSource;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
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
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Start Reading Quran',
                      style: context.themeData.textTheme.bodySmall?.copyWith(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      title,
                      style: context.themeData.textTheme.bodyLarge?.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Go',
                          style:
                              context.themeData.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: textColor,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: textColor,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              top: -60,
              right: -30,
              child: Image.asset(
                imageSource,
                width: context.mediaQueryData.size.width * .41,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
