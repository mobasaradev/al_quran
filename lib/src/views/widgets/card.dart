import 'package:flutter/material.dart';
import 'package:quran/src/utils/app_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.backgroundImage,
    required this.imageUrl,
    required this.title,
    required this.textColor,
  });

  final String backgroundImage;
  final String imageUrl;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .25,
      width: size.width * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          opacity: 0.7,
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: size.width * .25,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: AppFonts.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Go',
                  style: AppFonts.textTheme.labelSmall?.copyWith(
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
        ),
      ),
    );
  }
}
