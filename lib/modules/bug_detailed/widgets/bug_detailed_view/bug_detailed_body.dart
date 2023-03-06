import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets_animations/to_up_animation.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_detailed_image.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_details.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_detailed_view/bug_image.dart';
import 'package:flutter/material.dart';

class BugDetailedBody extends StatelessWidget {
  final Bug bug;
  final Size size;

  const BugDetailedBody({
    super.key,
    required this.bug,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return BugDetailedImage(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const TransparentAppBarWidget(),
            Stack(
              alignment: const Alignment(0, -1.2),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 240,
                  ),
                  child: ToUpAnimation(
                    endPadding: 0,
                    size: size,
                    child: BugDetails(
                      bug: bug,
                      size: size,
                    ),
                  ),
                ),
                BugImage(
                  bug: bug,
                  size: size,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
