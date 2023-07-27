import 'package:flutter/material.dart';
import 'package:quran/src/models/surah.dart';
import 'package:quran/src/services/api_service.dart';
import 'package:quran/src/views/screens/quran/widgets/search_bar.dart';
import 'package:quran/src/views/screens/quran/widgets/surah_list.dart';
import 'package:quran/src/views/widgets/appbar.dart';
import 'package:quran/src/views/widgets/container.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apiService = ApiService().fetchSurahList();
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
              child: FutureBuilder<List<Surah>>(
                future: apiService,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      final surah = snapshot.data![index].data[index];
                      return SurahList(
                        transliteration: surah.name.transliteration,
                        name: surah.name,
                        datum: surah,
                        revelation: surah.revelation,
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
