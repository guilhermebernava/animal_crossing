import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/design/fish_detailed_fonts.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:flutter/widgets.dart';

class FishDetailedName extends StatelessWidget {
  final Fish fish;
  const FishDetailedName({
    super.key,
    required this.fish,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "NAME",
              style: FishDetailedFonts.fishDetailedNameTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 2,
                color: AppColors.white,
                width: 100,
              ),
            ),
            Text(
              fish.name.toUpperCase(),
              style: FishDetailedFonts.fishDetailedName,
            ),
          ],
        ),
      ),
    );
  }
}
