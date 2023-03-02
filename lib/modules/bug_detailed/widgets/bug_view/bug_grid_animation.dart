import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_view/bug_grid.dart';
import 'package:flutter/widgets.dart';

class BugGridAnimation extends StatefulWidget {
  final Size size;
  final List<Bug> bugs;

  const BugGridAnimation({
    super.key,
    required this.bugs,
    required this.size,
  });

  @override
  State<BugGridAnimation> createState() => _BugGridAnimationState();
}

class _BugGridAnimationState extends State<BugGridAnimation>
    with TickerProviderStateMixin {
  bool canAnimate = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      setState(() {
        canAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 400),
      opacity: canAnimate ? 1.0 : 0.0,
      child: BugGrid(
        size: widget.size,
        bugs: widget.bugs,
      ),
    );
  }
}
