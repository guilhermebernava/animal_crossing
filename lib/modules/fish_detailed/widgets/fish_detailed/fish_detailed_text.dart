import 'package:animal_crossing/modules/fish_detailed/design/fish_detailed_fonts.dart';
import 'package:flutter/material.dart';

class FishDetailedText extends StatelessWidget {
  final String title;
  final String text;
  final Size size;
  final String? asset;
  final TextAlign textAlign;

  const FishDetailedText(
      {super.key,
      required this.text,
      required this.title,
      required this.size,
      this.asset,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: FishDetailedFonts.fishDetailedTitle,
                ),
                const SizedBox(
                  width: 5,
                ),
                asset != null
                    ? SizedBox(
                        height: 30,
                        child: Image.asset(
                          asset!,
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: size.width,
              child: Text(
                text,
                style: FishDetailedFonts.fishDetailedText,
                textAlign: textAlign,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
