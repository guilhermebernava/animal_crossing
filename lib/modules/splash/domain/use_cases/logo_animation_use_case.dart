import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/modules/splash/domain/interfaces/i_logo_animation_use_case.dart';
import 'package:animal_crossing/modules/splash/extensions/sine_curve.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LogoAnimationUseCase implements ILogoAnimationUseCase {
  @override
  late Animation<double> animation;

  @override
  late AnimationController animationController;

  @override
  late Animation<double> shakeAnimation;

  @override
  late AnimationController shakeController;

  LogoAnimationUseCase(TickerProvider tickerProvider) {
    animationController = AnimationController(
      vsync: tickerProvider,
      duration: const Duration(seconds: 3),
    );

    shakeController = AnimationController(
      vsync: tickerProvider,
      duration: const Duration(seconds: 1),
    );

    animation = Tween<double>(begin: 170, end: 50.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceInOut,
      ),
    );

    shakeAnimation = Tween(
      begin: 0.0,
      end: 0.1,
    ).animate(
      CurvedAnimation(
        parent: shakeController,
        curve: const SineCurve(count: 3),
      ),
    );

    animationController.forward().then(
          (_) => shakeController
              .forward()
              .then((_) => shakeController.reverse(from: 0.1)),
        );

    Future.delayed(const Duration(seconds: 6), () {
      Modular.to.navigate(AppRoutes.homeModule);
    });
  }

  @override
  void dispose() {
    shakeController.dispose();
    animationController.dispose();
  }
}
