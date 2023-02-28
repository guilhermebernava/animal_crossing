import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:flutter/material.dart';

class FishDetailedBackground extends StatelessWidget {
  final Size size;
  final Widget? child;

  const FishDetailedBackground({
    super.key,
    this.child,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.backgroundWater,
          ),
          fit: BoxFit.fill,
          opacity: 0.7,
        ),
      ),
      child: child,
    );
  }
}
