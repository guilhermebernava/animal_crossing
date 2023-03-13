import 'package:animal_crossing/commons/app_routes.dart';
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
            image: "https://acnhapi.com/v1/icons/fish/1",
            route: AppRoutes.fishDetailed,
          ),
          HomeGridItem(
            color: AppColors.green2,
            image: "https://acnhapi.com/v1/icons/bugs/1",
            route: AppRoutes.bugDetailed,
          ),
          HomeGridItem(
            color: AppColors.blue,
            image: "https://acnhapi.com/v1/icons/sea/1",
            route: AppRoutes.seaMonsterDetailed,
          ),
          HomeGridItem(
            color: AppColors.lightBrown,
            image:
                "https://dodo.ac/np/images/thumb/5/57/Fossil_NH_Inv_Icon.png/120px-Fossil_NH_Inv_Icon.png",
            route: AppRoutes.seaMonsterDetailed,
          ),
          HomeGridItem(
            color: AppColors.purple,
            image: "https://acnhapi.com/v1/icons/villagers/1",
            route: AppRoutes.seaMonsterDetailed,
          ),
          HomeGridItem(
            color: AppColors.orange,
            image:
                "https://i.pinimg.com/736x/89/fd/8d/89fd8d5ef4e81dd43832d81c615ef2f4.jpg",
            route: AppRoutes.seaMonsterDetailed,
          ),
          //TODO arrumar imagens
          HomeGridItem(
            color: AppColors.orange,
            image:
                "https://i.pinimg.com/736x/89/fd/8d/89fd8d5ef4e81dd43832d81c615ef2f4.jpg",
            route: AppRoutes.seaMonsterDetailed,
          ),
          HomeGridItem(
            color: AppColors.lightBlack,
            image:
                "https://www.models-resource.com/resources/big_icons/34/33824.png?updated=1581173928",
            route: AppRoutes.seaMonsterDetailed,
          ),
        ],
      ),
    );
  }
}
