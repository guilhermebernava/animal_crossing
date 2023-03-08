import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/design/app_fonts.dart';
import 'package:animal_crossing/commons/interfaces/i_core_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreGridItem<T extends ICoreGridItem> extends StatelessWidget {
  final T item;
  final String route;
  final List<Color> colors;

  const CoreGridItem({
    super.key,
    required this.item,
    required this.route,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed(
        ".$route",
        arguments: item,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            border: Border.all(
              color: AppColors.white,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  item.iconUrl,
                  scale: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: AppColors.white,
                    height: 2,
                    width: 100,
                  ),
                ),
                Text(
                  item.name.toUpperCase(),
                  style: AppFonts.coreGridItem,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
