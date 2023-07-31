import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/modules/surah/surah.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayer = AudioPlayer();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            BlocBuilder<SurahListBloc, SurahListState>(
              builder: (context, state) {
                return HeaderCard(
                  imageSource: AssetPaths.iconLeading,
                  backgroundImage: AssetPaths.featuredBg1,
                  surahList: state.surahList.first,
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<SurahDetailsBloc, SurahDetailsState>(
                builder: (context, state) {
                  if (state.status == SurahDetailsStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: state.surahDetails.length,
                    itemBuilder: (context, index) {
                      final surahDetail = state.surahDetails[index];
                      return SurahCard(
                        audioPlayer: audioPlayer,
                        surahDetails: surahDetail,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
