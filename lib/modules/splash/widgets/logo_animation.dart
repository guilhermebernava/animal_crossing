import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/modules/splash/domain/interfaces/i_logo_animation_use_case.dart';
import 'package:animal_crossing/modules/splash/domain/use_cases/logo_animation_use_case.dart';
import 'package:flutter/material.dart';

class LogoAnimation extends StatefulWidget {
  final Size size;

  const LogoAnimation({
    super.key,
    required this.size,
  });

  @override
  State<LogoAnimation> createState() => _LogoAnimationState();
}

class _LogoAnimationState extends State<LogoAnimation>
    with TickerProviderStateMixin {
  late final ILogoAnimationUseCase useCase;

  @override
  void initState() {
    super.initState();
    useCase = LogoAnimationUseCase(this);
  }

  @override
  void dispose() {
    super.dispose();
    useCase.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: useCase.animation,
        builder: (context, child) => AnimatedBuilder(
          animation: useCase.shakeAnimation,
          builder: (_, __) => Transform.rotate(
            angle: useCase.shakeAnimation.value,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: useCase.animation.value,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.logo,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
