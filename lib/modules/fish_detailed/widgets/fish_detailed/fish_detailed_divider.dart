import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';

class FishDetailedDivider extends StatelessWidget {
  final Size size;

  const FishDetailedDivider({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        height: 2,
        width: size.width,
        color: AppColors.white,
      ),
    );
  }
}
