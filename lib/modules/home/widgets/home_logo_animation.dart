import 'package:animal_crossing/modules/home/widgets/home_logo.dart';
import 'package:flutter/widgets.dart';

class HomeLogoAnimation extends StatefulWidget {
  final Size size;
  const HomeLogoAnimation({
    super.key,
    required this.size,
  });

  @override
  State<HomeLogoAnimation> createState() => _HomeLogoAnimationState();
}

class _HomeLogoAnimationState extends State<HomeLogoAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    animation = Tween(begin: 0.0, end: 0.17)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) => HomeLogo(
        size: widget.size,
        height: animation.value,
      ),
    );
  }
}
