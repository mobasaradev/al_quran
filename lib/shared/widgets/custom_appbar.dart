import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool automaticallyImplyLeading;
  final VoidCallback? onPressed;
  final IconData? icon;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    required this.automaticallyImplyLeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        title: AutoSizeText(
          title,
          maxLines: 1,
          style: context.themeData.textTheme.titleLarge?.copyWith(
            color: AppColors.primaryText,
          ),
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading
            ? InkWell(
                onTap: onPressed,
                child: Icon(
                  icon,
                  size: context.mediaQueryData.size.width * .05,
                  color: AppColors.primaryText,
                ),
              )
            : null,
      ),
    );
  }
}
