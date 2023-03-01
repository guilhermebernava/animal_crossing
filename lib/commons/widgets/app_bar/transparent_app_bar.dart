import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TransparentAppBar extends AppBar {
  TransparentAppBar({
    super.key,
    Widget? title,
    VoidCallback? onTap,
  }) : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: title,
          leading: GestureDetector(
            onTap: onTap ??
                () {
                  Modular.to.pop();
                },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.white,
              shadows: [
                Shadow(
                  color: AppColors.black.withOpacity(0.5),
                  blurRadius: 3,
                )
              ],
              size: 30,
            ),
          ),
        );
}
