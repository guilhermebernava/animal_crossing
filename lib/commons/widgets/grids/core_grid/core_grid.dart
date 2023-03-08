import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/interfaces/i_core_grid_item.dart';
import 'package:animal_crossing/commons/widgets/grids/core_grid/core_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CoreGrid<T extends ICoreGridItem> extends StatelessWidget {
  final Size size;
  final List<T> itens;
  final String route;
  final List<Color> colors;

  const CoreGrid({
    super.key,
    required this.size,
    required this.itens,
    required this.route,
    this.colors = const [AppColors.purple, AppColors.green2],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: itens.length,
          itemBuilder: (_, index) {
            final item = itens[index];
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 1200),
                child: FadeInAnimation(
                  child: CoreGridItem(
                    item: item,
                    route: route,
                    colors: colors,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
