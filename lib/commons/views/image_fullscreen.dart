import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/hero_animations/heroes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ImageFullscreen extends StatelessWidget {
  final String source;

  const ImageFullscreen({
    super.key,
    required this.source,
  });

  static const route = "/image_fullscreen";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Hero(
              tag: Heroes.imageHero,
              child: InteractiveViewer(
                alignment: Alignment.center,
                scaleFactor: 10,
                boundaryMargin: const EdgeInsets.all(10000),
                minScale: 0.5,
                maxScale: 3,
                child: Image.network(
                  source,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 50),
            child: GestureDetector(
              onTap: () => Modular.to.pop(),
              child: const Icon(
                Icons.close,
                color: AppColors.white,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
