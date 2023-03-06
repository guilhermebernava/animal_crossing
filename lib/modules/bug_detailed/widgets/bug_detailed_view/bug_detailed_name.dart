import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/bug_detailed/designs/bug_fonts.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:flutter/widgets.dart';

class BugDetailedName extends StatelessWidget {
  final Bug bug;
  const BugDetailedName({
    super.key,
    required this.bug,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.green, AppColors.green2],
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
              style: BugFonts.bugDetailedNameTitle,
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
              bug.name.toUpperCase(),
              style: BugFonts.bugDetailedNameTitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
