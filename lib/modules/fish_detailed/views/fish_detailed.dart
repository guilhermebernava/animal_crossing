import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/widgets/transparent_app_bar.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:flutter/material.dart';

class FishDetailed extends StatelessWidget {
  final Fish fish;
  const FishDetailed({
    super.key,
    required this.fish,
  });

  static const route = "/fish_detailed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransparentAppBar(),
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Text(fish.catchPhrase),
          Text(fish.description),
          Text(fish.monthsNothern),
          Text(fish.name),
        ],
      ),
    );
  }
}
