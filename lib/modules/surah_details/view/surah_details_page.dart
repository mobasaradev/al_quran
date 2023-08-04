import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key, required this.surah});

  final Surah surah;

  @override
  Widget build(BuildContext context) {
    // final audioPlayer = AudioPlayer();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            BlocBuilder<SurahBloc, SurahState>(
              builder: (context, state) {
                return HeaderCard(
                  imageSource: AssetPaths.iconLeading,
                  backgroundImage: AssetPaths.featuredBg1,
                  surah: surah,
                );
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BlocProvider<SurahDetailsBloc>(
                create: (context) => SurahDetailsBloc(
                  surahDetailsRepoImpl: context.read<SurahRepositoryImpl>(),
                )..add(SurahDetailsEventFetched(surah.number)),
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
                        return Column(
                          children: [
                            SurahCard(
                              surahDetails: surahDetail,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
