import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  const CustomContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: child,
    );
  }
}
