import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/home/widgets/home_custom_container.dart';
import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  final Size size;
  const HomeLogo({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: const HomeCustomContainer(
        color: AppColors.brown,
      ),
      child: SizedBox(
        width: size.width,
        height: size.height * 0.15,
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
