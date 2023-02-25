import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/widgets/transparent_app_bar.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_body.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_column.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_divider.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_detailed/fish_detailed_image.dart';
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: TransparentAppBar(),
      backgroundColor: AppColors.darkBlue,
      body: FishDetailedColumn(
        size: size,
        children: [
          FishDetailedImage(
            fish: fish,
            size: size,
          ),
          FishDetailedDivider(size: size),
          FishDetailedBody(
            fish: fish,
            size: size,
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
