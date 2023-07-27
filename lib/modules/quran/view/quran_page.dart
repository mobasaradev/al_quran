import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/modules/quran/bloc/surah_bloc.dart';
import 'package:quran/modules/quran/widgets/search_bar.dart';
import 'package:quran/modules/quran/widgets/surah_list.dart';
import 'package:quran/shared/widgets/appbar.dart';
import 'package:quran/shared/widgets/container.dart';


class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final apiService = ApiService().fetchSurahList();
    return Scaffold(
      appBar: CustomAppBar(
        title: "Quran",
        automaticallyImplyLeading: true,
        icon: Icons.home_outlined,
        onPressed: () => Navigator.pop(context),
      ),
      body: CustomContainer(
        child: Column(
          children: [
            const CustomSearchBar(placeholder: 'Search'),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<SurahBloc, SurahState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.surah.length,
                    itemBuilder: (context, index) {
                      final surah = state.surah[index];
                      return SurahList(
                        transliteration: surah.name.transliteration,
                        name: surah.name,
                        revelation: surah.revelation,
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




            // Expanded(
            //   child: FutureBuilder<List<Surah>>(
            //     future: apiService,
            //     builder: (context, snapshot) {
            //       if (!snapshot.hasData) {
            //         return const Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //       return ListView.builder(
            //         padding: EdgeInsets.zero,
            //         itemCount: snapshot.data?.length,
            //         itemBuilder: (context, index) {
            //           final surah = snapshot.data![index];
            //           return SurahList(
            //               transliteration: surah.name.transliteration,
            //               name: surah.name,
            //               revelation: surah.revelation,
            //               surah: surah,);
            //         },
            //       );
            //     },
            //   ),