import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:flutter/material.dart';

class SeaMonsterBackground extends StatelessWidget {
  final Size size;
  final Widget child;

  const SeaMonsterBackground({
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
            AppImages.backgroundSeaMonster,
          ),
          fit: BoxFit.contain,
          repeat: ImageRepeat.repeatY,
          opacity: 0.7,
        ),
      ),
      child: child,
    );
  }
}
