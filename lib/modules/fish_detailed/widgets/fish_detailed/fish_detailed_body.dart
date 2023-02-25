import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_text.dart';
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
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          children: [
            FishDetailedText(
              text: fish.name,
              title: "Name",
              size: size,
            ),
            FishDetailedText(
              text: fish.price.toString(),
              title: "Price",
              size: size,
            ),
            FishDetailedText(
              text: fish.rarity,
              title: "Rarity",
              size: size,
            ),
            FishDetailedText(
              text: fish.typeShadow,
              title: "Shadow",
              size: size,
            ),
            FishDetailedText(
              text: fish.location,
              title: "Location",
              size: size,
            ),
            const FishTextDivider(),
            FishDetailedText(
              text: fish.catchPhrase,
              title: "Catch Phrase",
              size: size,
            ),
            FishDetailedText(
              text: fish.description,
              title: "Description",
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}
