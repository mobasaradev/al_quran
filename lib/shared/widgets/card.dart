import 'package:flutter/material.dart';
import 'package:quran/utils/app_fonts.dart';

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
      // height: size.height * .2,
      // width: size.width * .4,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: size.width * .2,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: AppFonts.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Go',
                  style: AppFonts.textTheme.bodySmall?.copyWith(
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
