import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/utils/utils.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.backgroundImage,
    required this.imageUrl,
    required this.title,
    required this.textColor, this.onTap,
  });

  final VoidCallback? onTap;
  final String backgroundImage;
  final String imageUrl;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.mediaQueryData.size.height * .22,
        width: context.mediaQueryData.size.width * .4,
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
                width: context.mediaQueryData.size.width * .2,
              ),
              const SizedBox(height: 20),
              AutoSizeText(
                title,
                style: context.themeData.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Go',
                    style: context.themeData.textTheme.bodySmall?.copyWith(
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
      ),
    );
  }
}
