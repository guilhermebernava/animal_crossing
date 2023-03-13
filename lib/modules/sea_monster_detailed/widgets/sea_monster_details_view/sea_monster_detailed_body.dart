import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets_animations/to_up_animation.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_detailed_image.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_details.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_image.dart';
import 'package:flutter/material.dart';

class SeaMonsterDetailedBody extends StatelessWidget {
  final SeaMonster seaMonster;
  final Size size;

  const SeaMonsterDetailedBody({
    super.key,
    required this.seaMonster,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SeaMonsterDetailedImage(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const TransparentAppBarWidget(),
            Stack(
              alignment: const Alignment(0, -1.2),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 240,
                  ),
                  child: ToUpAnimation(
                    endPadding: 0,
                    size: size,
                    child: SeaMonsterDetails(
                      seaMonster: seaMonster,
                      size: size,
                    ),
                  ),
                ),
                SeaMonsterImage(
                  seaMonster: seaMonster,
                  size: size,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
