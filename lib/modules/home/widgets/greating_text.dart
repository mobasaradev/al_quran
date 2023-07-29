import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          "السَّلاَمُ عَلَيْكُمْ",
          style: context.themeData.textTheme.titleLarge?.copyWith(
            color: AppColors.tertiaryText,
          ),
        ),
        AutoSizeText(
          "Assalamu’alaikum",
          style: context.themeData.textTheme.titleSmall?.copyWith(
            color: AppColors.black.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}
