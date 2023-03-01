import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets/loading_widget.dart';
import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/use_cases/i_fish_use_case.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/list_container_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FishBuilder extends StatefulWidget {
  final IFishUseCase useCase;
  final Size size;

  const FishBuilder({
    super.key,
    required this.useCase,
    required this.size,
  });

  @override
  State<FishBuilder> createState() => _FishBuilderState();
}

class _FishBuilderState extends State<FishBuilder> {
  @override
  void initState() {
    super.initState();
    widget.useCase.fishBloc.add(FishGetAll());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: widget.useCase.fishBloc,
        builder: (_, state) {
          if (state is Fishes) {
            return Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: TransparentAppBarWidget(
                    onTap: () => Modular.to.navigate(
                      AppRoutes.homeModule,
                    ),
                  ),
                ),
                SearchInput(
                  controller: widget.useCase.searchController,
                ),
                ListContainerAnimation(
                  size: widget.size,
                  fishes: state.fishes,
                ),
              ],
            );
          }
          return const LoadingWidget();
        });
  }
}
