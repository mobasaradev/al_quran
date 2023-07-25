import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/app.dart';
import 'package:quran/src/viewmodels/home/bloc/time_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<TimeBloc>(
        create: (context) => TimeBloc(),
      )
    ],
    child: const MyApp(),
  ));
}
