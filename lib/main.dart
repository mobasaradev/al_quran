import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/modules/modules.dart';
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
          BlocProvider<SurahBloc>(
            create: (context) => SurahBloc(
              surahRepoImpl: context.read<SurahRepositoryImpl>(),
            )..add(
                SurahEventFetched(),
              ),
          ),
          BlocProvider<SurahDetailsBloc>(
            create: (context) => SurahDetailsBloc(
              surahDetailsRepoImpl: context.read<SurahRepositoryImpl>(),
            ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
