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
    return Container(
      decoration: BoxDecoration(
        //TODO adicionar imagem de fundo
        color: AppColors.green2,
        border: Border.all(
          color: AppColors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              bug.iconUrl,
              scale: 1.2,
            ),
            Text(
              bug.name.toUpperCase(),
              style: BugFonts.gridItemName,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
