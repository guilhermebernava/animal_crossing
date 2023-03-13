import 'package:animal_crossing/commons/widgets/heroes/image_hero.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:flutter/material.dart';

class SeaMonsterImage extends StatelessWidget {
  final Size size;
  final SeaMonster seaMonster;

  const SeaMonsterImage({
    super.key,
    required this.seaMonster,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ImageHero(
      source: seaMonster.imageUrl,
      child: Image.network(
        seaMonster.imageUrl,
        width: size.width * 0.9,
        fit: BoxFit.cover,
      ),
    );
  }
}
