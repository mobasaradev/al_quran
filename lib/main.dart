import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/modules/modules.dart';
import 'package:quran/shared/shared.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SurahRepo>(
          create: (context) => SurahRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SurahBloc>(
            create: (context) => SurahBloc(
              surahRepo: context.read<SurahRepo>(),
            )..add(
                SurahEventFetched(),
              ),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
