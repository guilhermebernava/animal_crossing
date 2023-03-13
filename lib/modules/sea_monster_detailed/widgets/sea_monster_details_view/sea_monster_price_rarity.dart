import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_details_view/sea_monster_detailed_text.dart';
import 'package:flutter/material.dart';

class SeaMonsterPriceRarity extends StatelessWidget {
  final Size size;
  final SeaMonster seaMonster;

  const SeaMonsterPriceRarity({
    super.key,
    required this.seaMonster,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.3,
            child: SeaMonsterDetailedText(
              text: seaMonster.price.toString(),
              asset: AppImages.moneyBag,
              title: "Price",
              size: size,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: AppColors.grey,
              width: 2,
              height: 50,
            ),
          ),
          SizedBox(
            width: size.width * 0.3,
            child: SeaMonsterDetailedText(
              text: "Common",
              asset: AppImages.star,
              title: "Rarity",
              size: size,
            ),
          ),
        ],
      ),
    );
  }
}
