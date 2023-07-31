import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/modules/quran/bloc/surah_list_bloc.dart';
import 'package:quran/modules/surah/bloc/surah_details_bloc.dart';
import 'package:quran/shared/shared.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SurahRepositoryImpl>(
          create: (context) => SurahRepositoryImpl(NetworkUtil()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SurahListBloc>(
            create: (context) => SurahListBloc(
              surahListRepoImpl: context.read<SurahRepositoryImpl>(),
            )..add(
                SurahListEventFetched(),
              ),
          ),
          BlocProvider<SurahDetailsBloc>(
            create: (context) => SurahDetailsBloc(
              surahDetailsRepoImpl: context.read<SurahRepositoryImpl>(),
            )..add(
                SurahDetailsEventFetched(),
              ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
