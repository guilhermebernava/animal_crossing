import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/design/sea_monster_fonts.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:flutter/widgets.dart';

class SeaMonsterDetailedName extends StatelessWidget {
  final SeaMonster seaMonster;
  const SeaMonsterDetailedName({
    super.key,
    required this.seaMonster,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.blue, AppColors.lightPurple],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
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
              style: SeaMonsterFonts.seaMonsterDetailedNameTitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                height: 2,
                color: AppColors.trueWhite,
                width: 100,
              ),
            ),
            Text(
              seaMonster.name.toUpperCase(),
              style: SeaMonsterFonts.seaMonsterDetailedNameTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
