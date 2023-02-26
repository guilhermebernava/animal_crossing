import 'package:animal_crossing/modules/home/widgets/home_grid.dart';
import 'package:flutter/widgets.dart';

class HomeGridAnimation extends StatefulWidget {
  final Size size;
  const HomeGridAnimation({
    super.key,
    required this.size,
  });

  @override
  State<HomeGridAnimation> createState() => _HomeGridAnimationState();
}

class _HomeGridAnimationState extends State<HomeGridAnimation>
    with TickerProviderStateMixin {
  bool canAnimate = false;

  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));

    animation = Tween(begin: 0.25, end: 0.17)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        canAnimate = true;
      });
      controller.forward();
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: canAnimate ? 1.0 : 0.0,
      child: AnimatedBuilder(
        animation: animation,
        builder: (_, __) => HomeGrid(
          size: widget.size,
          topPadding: animation.value,
        ),
      ),
    );
  }
}
