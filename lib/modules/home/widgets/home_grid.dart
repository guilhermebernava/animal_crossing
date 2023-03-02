import 'package:animal_crossing/modules/home/domain/entities/home_grid_item.dart';
import 'package:animal_crossing/modules/home/widgets/home_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeGrid extends StatelessWidget {
  final Size size;
  final List<HomeGridItem> itens;

  const HomeGrid({
    super.key,
    required this.size,
    required this.itens,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: size.height * 0.17,
      ),
      child: GridView.builder(
        itemCount: itens.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (_, index) {
          final item = itens[index];
          return AnimationConfiguration.staggeredGrid(
            position: index,
            columnCount: 2,
            child: ScaleAnimation(
              duration: const Duration(milliseconds: 1000),
              child: FadeInAnimation(
                child: HomeContainer(
                  color: item.color,
                  image: item.image,
                  size: size,
                  onTap: () => Modular.to.navigate(item.route),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
