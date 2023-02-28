import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_body.dart';
import 'package:flutter/material.dart';

class FishDetailedBodyAnimation extends StatefulWidget {
  final Fish fish;
  final Size size;

  const FishDetailedBodyAnimation({
    super.key,
    required this.fish,
    required this.size,
  });

  @override
  State<FishDetailedBodyAnimation> createState() =>
      _FishDetailedBodyAnimationState();
}

class _FishDetailedBodyAnimationState extends State<FishDetailedBodyAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    animation = Tween(begin: 700.0, end: 150.0).animate(
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
          return FishDetailedBody(
            fish: widget.fish,
            size: widget.size,
            paddingTop: animation.value,
          );
        });
  }
}
