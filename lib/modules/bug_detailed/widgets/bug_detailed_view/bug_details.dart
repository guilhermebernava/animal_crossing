import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_detailed_name.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_detailed_text.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_price_rarity.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_text_divider.dart';
import 'package:flutter/material.dart';

class BugDetails extends StatelessWidget {
  final Size size;
  final Bug bug;

  const BugDetails({
    super.key,
    required this.bug,
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
                BugPriceRarity(
                  bug: bug,
                  size: size,
                ),
                BugDetailedText(
                  text: bug.location,
                  asset: AppImages.house,
                  title: "Location",
                  size: size,
                ),
                const BugTextDivider(),
                BugDetailedText(
                  text: bug.catchPhrase,
                  textAlign: TextAlign.justify,
                  title: "Catch Phrase",
                  size: size,
                ),
                BugDetailedText(
                  text: bug.description,
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
          BugDetailedName(
            bug: bug,
          ),
        ],
      ),
    );
  }
}
