import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/list_container.dart';
import 'package:flutter/material.dart';

class ListContainerAnimation extends StatefulWidget {
  final Size size;
  final List<Fish> fishes;

  const ListContainerAnimation({
    super.key,
    required this.fishes,
    required this.size,
  });

  @override
  State<ListContainerAnimation> createState() => _ListContainerAnimationState();
}

class _ListContainerAnimationState extends State<ListContainerAnimation>
    with TickerProviderStateMixin {
  bool canAnimate = false;
  late final AnimationController controller;
  late final Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    animation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.decelerate,
      ),
    );

    Future.delayed(const Duration(milliseconds: 500), () {
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
      duration: const Duration(milliseconds: 300),
      opacity: canAnimate ? 1.0 : 0,
      child: AnimatedBuilder(
        animation: animation,
        builder: (_, __) => ListContainer(
          size: widget.size,
          fishes: widget.fishes,
          paddingTop: animation.value,
        ),
      ),
    );
  }
}
