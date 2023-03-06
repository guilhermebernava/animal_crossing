import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';

class BugTextDivider extends StatelessWidget {
  const BugTextDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: 2,
        color: AppColors.black,
      ),
    );
  }
}
