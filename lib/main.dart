import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/src/services/api_service.dart';
import 'package:quran/src/viewmodels/home/location/bloc/current_location_bloc.dart';
import 'package:quran/src/viewmodels/home/time_date/bloc/current_time_bloc.dart';
import 'package:quran/src/viewmodels/quran/bloc/surah_bloc.dart';

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
          create: (context) => SurahBloc(ApiService()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
