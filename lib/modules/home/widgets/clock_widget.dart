import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DateTime>(
      stream: Stream<DateTime>.periodic(
        const Duration(seconds: 1),
        (_) => DateTime.now(),
      ),
      builder: (context, snapshot) {
        final timeStr = snapshot.data == null
            ? ''
            : DateFormat('HH:mm:ss').format(snapshot.data!);
        final dateStr = snapshot.data == null
            ? ''
            : DateFormat('EEE, M-d-y').format(snapshot.data!);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AutoSizeText(
              timeStr,
              style: context.themeData.textTheme.titleMedium?.copyWith(
                color: AppColors.tertiaryText.withOpacity(.7),
              ),
            ),
            AutoSizeText(
              dateStr,
              style: context.themeData.textTheme.bodyMedium?.copyWith(
                color: AppColors.tertiaryText.withOpacity(.7),
              ),
            ),
          ],
        );
      },
    );
  }
}
