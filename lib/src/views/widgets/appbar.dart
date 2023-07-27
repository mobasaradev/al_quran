import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/utils/app_colors.dart';
import 'package:quran/src/utils/app_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
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
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        title: AutoSizeText(
          title,
          maxLines: 1,
          style: AppFonts.textTheme.titleLarge?.copyWith(
            color: AppColor.primaryText,
          ),
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: automaticallyImplyLeading
            ? InkWell(
                onTap: onPressed,
                child: Icon(
                  icon,
                  size: size.width * .07,
                  color: AppColor.primaryText,
                ),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
