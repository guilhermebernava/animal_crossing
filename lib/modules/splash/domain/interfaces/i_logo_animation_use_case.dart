import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class ILogoAnimationUseCase implements Disposable {
  late final AnimationController animationController;
  late final AnimationController shakeController;
  late final Animation<double> animation;
  late final Animation<double> shakeAnimation;
}
