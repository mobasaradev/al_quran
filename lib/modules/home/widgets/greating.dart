import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/modules/home/home.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';



class GreetingWidgets extends StatelessWidget {
  const GreetingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
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
        ),
        BlocBuilder<CurrentTimeBloc, CurrentTimeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  state.currentTime,
                  style: context.themeData.textTheme.titleMedium?.copyWith(
                    color: AppColors.tertiaryText.withOpacity(.7),
                  ),
                ),
                AutoSizeText(
                  state.currentDate,
                  style: context.themeData.textTheme.bodyMedium?.copyWith(
                    color: AppColors.tertiaryText.withOpacity(.7),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
