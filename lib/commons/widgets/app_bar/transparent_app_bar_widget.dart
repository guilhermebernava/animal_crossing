import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TransparentAppBarWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const TransparentAppBarWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 20,
        top: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap ??
                () {
                  Modular.to.pop();
                },
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.black,
              shadows: [
                Shadow(
                  color: AppColors.black,
                  blurRadius: 3,
                )
              ],
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
