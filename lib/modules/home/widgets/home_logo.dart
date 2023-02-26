import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/home/widgets/home_custom_container.dart';
import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  final Size size;
  final double height;

  const HomeLogo({super.key, required this.size, this.height = 0.15});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: const HomeCustomContainer(
        color: AppColors.green,
      ),
      child: SizedBox(
        width: size.width,
        height: size.height * height,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Center(
            child: Image.asset(
              AppImages.leaf,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
