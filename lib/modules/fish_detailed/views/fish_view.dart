import 'package:animal_crossing/commons/assets/app_images.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/fish_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FishView extends StatelessWidget {
  final Bloc<FishEvents, FishStates> bloc;

  const FishView({
    super.key,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
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
          fishBloc: bloc,
          size: size,
        ),
      ),
    );
  }
}
