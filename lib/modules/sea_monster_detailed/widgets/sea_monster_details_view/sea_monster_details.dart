import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_detailed_name.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_detailed_text.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_price_rarity.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_text_divider.dart';
import 'package:flutter/material.dart';

class SeaMonsterDetails extends StatelessWidget {
  final Size size;
  final SeaMonster seaMonster;

  const SeaMonsterDetails({
    super.key,
    required this.seaMonster,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SeaMonsterPriceRarity(
                  seaMonster: seaMonster,
                  size: size,
                ),
                const SeaMonsterTextDivider(),
                SeaMonsterDetailedText(
                  text: seaMonster.catchPhrase,
                  textAlign: TextAlign.justify,
                  title: "Catch Phrase",
                  size: size,
                ),
                SeaMonsterDetailedText(
                  text: seaMonster.description,
                  title: "Description",
                  textAlign: TextAlign.justify,
                  size: size,
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
          SeaMonsterDetailedName(
            seaMonster: seaMonster,
          ),
        ],
      ),
    );
  }
}
