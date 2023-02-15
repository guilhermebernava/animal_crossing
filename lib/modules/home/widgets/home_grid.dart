import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/home/widgets/home_container.dart';
import 'package:flutter/material.dart';

class HomeGrid extends StatelessWidget {
  final Size size;
  const HomeGrid({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: size.height * 0.17,
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: const [
          HomeContainer(
            color: AppColors.lightBlue,
            image: AppImages.fish,
          ),
          HomeContainer(
            color: AppColors.green2,
            image: AppImages.bug,
          ),
          HomeContainer(
            color: AppColors.blue,
            image: AppImages.seaCreatures,
          ),
        ],
      ),
    );
  }
}
