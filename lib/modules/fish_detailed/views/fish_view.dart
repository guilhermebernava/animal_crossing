import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/use_cases/i_fish_use_case.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/fish_builder.dart';
import 'package:flutter/material.dart';

class FishView extends StatelessWidget {
  final IFishUseCase useCase;

  const FishView({
    super.key,
    required this.useCase,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.backgroundFish,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: FishBuilder(
          useCase: useCase,
          size: size,
        ),
      ),
    );
  }
}
