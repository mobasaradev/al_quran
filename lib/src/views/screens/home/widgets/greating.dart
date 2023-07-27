import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/src/utils/app_colors.dart';
import 'package:quran/src/utils/app_fonts.dart';
import 'package:quran/src/viewmodels/home/time_date/bloc/current_time_bloc.dart';

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
              style: AppFonts.textTheme.titleLarge?.copyWith(
                color: AppColor.tertiaryText,
              ),
            ),
            AutoSizeText(
              "Assalamu’alaikum",
              style: AppFonts.textTheme.titleSmall?.copyWith(
                color: AppColor.black.withOpacity(.6),
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
                  style: AppFonts.textTheme.titleMedium?.copyWith(
                    color: AppColor.tertiaryText.withOpacity(.7),
                  ),
                ),
                AutoSizeText(
                  state.currentDate,
                  style: AppFonts.textTheme.bodyMedium?.copyWith(
                    color: AppColor.tertiaryText.withOpacity(.7),
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
