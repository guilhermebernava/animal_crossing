import 'package:animal_crossing/commons/hero_animations/heroes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ImageHero extends StatelessWidget {
  final Widget child;
  final String source;

  const ImageHero({
    super.key,
    required this.child,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed(
        Heroes.imageHeroRoute,
        arguments: source,
      ),
      child: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(10),
          minScale: 0.5,
          maxScale: 1.5,
          child: Hero(
            tag: Heroes.imageHero,
            child: child,
          ),
        ),
      ),
    );
  }
}
