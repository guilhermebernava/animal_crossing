import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final Color color;
  final String image;

  const HomeContainer({
    super.key,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
        border: Border.all(
          color: AppColors.white,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
