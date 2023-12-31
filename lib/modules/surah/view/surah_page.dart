import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: "Quran",
        automaticallyImplyLeading: true,
        icon: Icons.home_outlined,
        onPressed: () => Navigator.pop(context),
      ).toPreferredSize(),
      body: CustomContainer(
        child: Column(
          children: [
            const CustomSearchBar(placeholder: 'Search'),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<SurahBloc, SurahState>(
                builder: (context, state) {
                  if (state.status == SurahStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: state.surah.length,
                    itemBuilder: (context, index) {
                      final surah = state.surah[index];
                      return CustomListOfSurah(
                        surah: surah,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
