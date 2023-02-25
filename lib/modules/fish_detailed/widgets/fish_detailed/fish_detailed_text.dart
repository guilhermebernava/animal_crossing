import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/design/fish_detailed_fonts.dart';
import 'package:flutter/material.dart';

class FishDetailedText extends StatelessWidget {
  final String title;
  final String text;
  final Size size;

  const FishDetailedText({
    super.key,
    required this.text,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "$title:",
                  style: FishDetailedFonts.fishDetailedTitle,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.location_city,
                  color: AppColors.black,
                ),
              ],
            ),
            SizedBox(
              width: size.width,
              child: Text(
                text,
                style: FishDetailedFonts.fishDetailedText,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
