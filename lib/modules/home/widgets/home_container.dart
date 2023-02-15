import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final Color color;
  final String image;
  final VoidCallback onTap;
  final Size size;

  const HomeContainer({
    super.key,
    required this.color,
    required this.image,
    required this.onTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.28,
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
      ),
    );
  }
}
