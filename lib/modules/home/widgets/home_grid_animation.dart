import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/home/domain/entities/home_grid_item.dart';
import 'package:animal_crossing/modules/home/widgets/home_grid.dart';
import 'package:flutter/widgets.dart';

class HomeGridAnimation extends StatefulWidget {
  final Size size;
  const HomeGridAnimation({
    super.key,
    required this.size,
  });

  @override
  State<HomeGridAnimation> createState() => _HomeGridAnimationState();
}

class _HomeGridAnimationState extends State<HomeGridAnimation>
    with TickerProviderStateMixin {
  bool canAnimate = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        canAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: canAnimate ? 1.0 : 0.0,
      child: HomeGrid(
        size: widget.size,
        itens: [
          HomeGridItem(
            color: AppColors.lightBlue,
            image: AppImages.fish,
            route: AppRoutes.fishDetailed,
          ),
          HomeGridItem(
            color: AppColors.green2,
            image: AppImages.bug,
            route: AppRoutes.bugDetailed,
          ),
          HomeGridItem(
            color: AppColors.blue,
            image: AppImages.seaCreatures,
            route: AppRoutes.seaMonsterDetailed,
          )
        ],
      ),
    );
  }
}
