import 'package:flutter/material.dart';

class ToUpAnimation extends StatefulWidget {
  final Widget child;
  final Size size;
  final double endPadding;

  const ToUpAnimation({
    super.key,
    required this.size,
    required this.child,
    this.endPadding = 150,
  });

  @override
  State<ToUpAnimation> createState() => _ToUpAnimationState();
}

class _ToUpAnimationState extends State<ToUpAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    animation = Tween(begin: 700.0, end: widget.endPadding).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.decelerate,
      ),
    );

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
      builder: (_, __) {
        return Padding(
          padding: EdgeInsets.only(top: animation.value),
          child: widget.child,
        );
      },
    );
  }
}
