import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_name.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_text.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_price_rarity.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_text_divider.dart';
import 'package:flutter/material.dart';

class FishDetailedBody extends StatelessWidget {
  final Size size;
  final Fish fish;

  const FishDetailedBody({
    super.key,
    required this.fish,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 110),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
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
                  FishPriceRarity(
                    fish: fish,
                    size: size,
                  ),
                  FishDetailedText(
                    text: fish.typeShadow,
                    asset: AppImages.shadow,
                    title: "Shadow",
                    size: size,
                  ),
                  FishDetailedText(
                    text: fish.location,
                    asset: AppImages.house,
                    title: "Location",
                    size: size,
                  ),
                  const FishTextDivider(),
                  FishDetailedText(
                    text: fish.catchPhrase,
                    textAlign: TextAlign.justify,
                    title: "Catch Phrase",
                    size: size,
                  ),
                  FishDetailedText(
                    text: fish.description,
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
            FishDetailedName(
              fish: fish,
            ),
          ],
        ),
      ),
    );
  }
}
