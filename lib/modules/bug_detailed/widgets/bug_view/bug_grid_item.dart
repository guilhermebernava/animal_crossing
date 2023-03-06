import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/bug_detailed/designs/bug_fonts.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:flutter/material.dart';

class BugGridItem extends StatelessWidget {
  final Bug bug;

  const BugGridItem({
    super.key,
    required this.bug,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
          color: bug.id.isOdd ? AppColors.blue : AppColors.purple,
          border: Border.all(
            color: AppColors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                bug.iconUrl,
                scale: 1.35,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  color: AppColors.white,
                  height: 2,
                  width: 100,
                ),
              ),
              Text(
                bug.name.toUpperCase(),
                style: BugFonts.gridItemName,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
