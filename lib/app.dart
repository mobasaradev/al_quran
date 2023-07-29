import 'package:flutter/material.dart';
import 'package:quran/modules/home/home.dart';
import 'package:quran/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Al-Quran Al-Kareem',
      theme: AppTheme.themeData(),
      home: const HomePage(),
    );
  }
}
