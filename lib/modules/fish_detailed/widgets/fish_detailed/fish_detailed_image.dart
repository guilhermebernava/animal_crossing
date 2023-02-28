import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:flutter/material.dart';

class FishDetailedImage extends StatelessWidget {
  final Size size;
  final Fish fish;

  const FishDetailedImage({
    super.key,
    required this.fish,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      fish.imageUrl,
      width: size.width,
      fit: BoxFit.cover,
    );
  }
}
