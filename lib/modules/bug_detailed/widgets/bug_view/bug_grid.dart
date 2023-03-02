import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_view/bug_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class BugGrid extends StatelessWidget {
  final Size size;
  final List<Bug> bugs;

  const BugGrid({
    super.key,
    required this.size,
    required this.bugs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: bugs.length,
          itemBuilder: (_, index) {
            final bug = bugs[index];
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 1200),
                child: FadeInAnimation(
                  child: BugGridItem(
                    bug: bug,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
