import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:flutter/material.dart';

class SeaMonsterDetailedImage extends StatelessWidget {
  final Size size;
  final Widget child;

  const SeaMonsterDetailedImage({
    super.key,
    required this.size,
    required this.child,
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
          fit: BoxFit.cover,
          opacity: 0.45,
        ),
      ),
      child: child,
    );
  }
}
