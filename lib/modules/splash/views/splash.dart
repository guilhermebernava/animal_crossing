import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/modules/splash/widgets/logo_animation.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            opacity: 0.5,
            image: AssetImage(
              AppImages.backgroundSplash,
            ),
          ),
        ),
        child: LogoAnimation(size: size),
      ),
    );
  }
}
