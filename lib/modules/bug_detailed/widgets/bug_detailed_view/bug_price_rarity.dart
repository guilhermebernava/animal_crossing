import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_detailed_text.dart';
import 'package:flutter/material.dart';

class BugPriceRarity extends StatelessWidget {
  final Size size;
  final Bug bug;

  const BugPriceRarity({
    super.key,
    required this.bug,
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
            child: BugDetailedText(
              text: bug.price.toString(),
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
            child: BugDetailedText(
              text: bug.rarity,
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
