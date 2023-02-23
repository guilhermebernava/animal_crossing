import 'package:animal_crossing/modules/fish_detailed/design/fish_detailed_fonts.dart';
import 'package:flutter/material.dart';

class ItemContainerText extends StatelessWidget {
  final String text;
  final String title;
  const ItemContainerText({
    super.key,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            "$title ",
            textAlign: TextAlign.start,
            style: FishDetailedFonts.itemContainerTitle,
          ),
          Text(
            text,
            textAlign: TextAlign.start,
            style: FishDetailedFonts.itemContainerText,
          ),
        ],
      ),
    );
  }
}
