import 'package:flutter/material.dart';
import 'package:quran/theme/theme.dart';
import 'package:quran/utils/utils.dart';


class CustomSearchBar extends StatelessWidget {
  final String placeholder;
  final ValueChanged<String>? onChanged;

  const CustomSearchBar({
    Key? key,
    required this.placeholder,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: context.themeData.textTheme.bodySmall?.copyWith(
            color: AppColors.grey,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            size: size.width * .05,
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
