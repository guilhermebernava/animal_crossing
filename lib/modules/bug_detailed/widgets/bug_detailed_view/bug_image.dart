import 'package:animal_crossing/commons/widgets/heroes/image_hero.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:flutter/material.dart';

class BugImage extends StatelessWidget {
  final Size size;
  final Bug bug;

  const BugImage({
    super.key,
    required this.bug,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ImageHero(
      source: bug.imageUrl,
      child: Image.network(
        bug.imageUrl,
        width: size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
