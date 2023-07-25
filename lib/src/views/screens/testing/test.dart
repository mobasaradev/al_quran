import 'package:flutter/material.dart';
import 'package:quran/src/views/widgets/appbar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Al-Quran",
        automaticallyImplyLeading: true,
        icon: Icons.arrow_back_ios,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
