import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/modules/home/widgets/home_grid.dart';
import 'package:animal_crossing/modules/home/widgets/home_logo.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  final Size size;
  const HomeBody({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.3,
          repeat: ImageRepeat.repeatY,
          image: AssetImage(
            AppImages.texture,
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          HomeLogo(
            size: size,
          ),
          HomeGrid(
            size: size,
          ),
        ],
      ),
    );
  }
}
