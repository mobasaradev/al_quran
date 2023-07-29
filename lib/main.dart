import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/modules/quran/bloc/surah_bloc.dart';
import 'package:quran/shared/shared.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SurahListRepo>(
          create: (context) => SurahListRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SurahListBloc>(
            create: (context) => SurahListBloc(
              surahListRepo: context.read<SurahListRepo>(),
            )..add(
                SurahListEventFetched(),
              ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
