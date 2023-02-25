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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Image.network(
        fish.imageUrl,
        height: size.height * 0.17,
        fit: BoxFit.cover,
      ),
    );
  }
}
