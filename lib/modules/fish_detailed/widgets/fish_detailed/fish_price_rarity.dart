import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_text.dart';
import 'package:flutter/material.dart';

class FishPriceRarity extends StatelessWidget {
  final Size size;
  final Fish fish;

  const FishPriceRarity({
    super.key,
    required this.fish,
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
            child: FishDetailedText(
              text: fish.price.toString(),
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
            child: FishDetailedText(
              text: fish.rarity,
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
