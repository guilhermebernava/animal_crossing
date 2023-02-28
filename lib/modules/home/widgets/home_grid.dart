import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/home/widgets/home_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeGrid extends StatelessWidget {
  final Size size;
  final double topPadding;

  const HomeGrid({super.key, required this.size, this.topPadding = 0.17});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: size.height * topPadding,
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          HomeContainer(
            color: AppColors.lightBlue,
            image: AppImages.fish,
            size: size,
            onTap: () => Modular.to.navigate(AppRoutes.fishDetailed),
          ),
          HomeContainer(
            color: AppColors.green2,
            image: AppImages.bug,
            size: size,
            onTap: () {},
          ),
          HomeContainer(
            color: AppColors.blue.withAlpha(244),
            image: AppImages.seaCreatures,
            size: size,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
