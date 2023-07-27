import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/modules/home/bloc/location/current_location_bloc.dart';
import 'package:quran/modules/home/bloc/time_date/current_time_bloc.dart';
import 'package:quran/modules/quran/bloc/surah_bloc.dart';
import 'package:quran/shared/services/api_service.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CurrentTimeBloc>(
          create: (context) => CurrentTimeBloc(),
        ),
        BlocProvider<CurrentLocationBloc>(
          create: (context) => CurrentLocationBloc(),
        ),
        BlocProvider<SurahBloc>(
          create: (context) => SurahBloc(ApiService())..add(SurahListEvent())
          ,
        ),
      ],
      child: const MyApp(),
    ),
  );
}
