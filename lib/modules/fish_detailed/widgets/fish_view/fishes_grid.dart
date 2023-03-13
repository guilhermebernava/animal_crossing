import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/widgets/grids/core_grid/core_grid.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/views/fish_detailed.dart';
import 'package:flutter/material.dart';

class FishesGrid extends StatelessWidget {
  final Size size;
  final List<Fish> fishes;

  const FishesGrid({
    super.key,
    required this.fishes,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return CoreGrid(
      size: size,
      itens: fishes,
      route: FishDetailed.route,
      colors: const [AppColors.blue, AppColors.green],
    );
  }
}
