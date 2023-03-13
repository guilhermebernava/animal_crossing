import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/design/app_colors.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets/grids/core_grid/core_grid.dart';
import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:animal_crossing/commons/widgets/loading_widget.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/use_cases/i_sea_monster_use_case.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/views/sea_monster_details_view.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/widgets/sea_monster_view/sea_monster_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BodyBuilder extends StatefulWidget {
  final ISeaMonsterUseCase useCase;
  final Size size;

  const BodyBuilder({
    super.key,
    required this.useCase,
    required this.size,
  });

  @override
  State<BodyBuilder> createState() => _BodyBuilderState();
}

class _BodyBuilderState extends State<BodyBuilder> {
  @override
  void initState() {
    super.initState();
    widget.useCase.bloc.add(SeaMonsterGetAll());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.useCase.bloc,
      builder: (_, state) {
        if (state is SeaMonsters) {
          return SeaMonsterBackground(
            size: widget.size,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  TransparentAppBarWidget(
                    onTap: () => Modular.to.navigate(
                      AppRoutes.homeModule,
                    ),
                  ),
                  SearchInput(
                    controller: widget.useCase.searchController,
                  ),
                  CoreGrid(
                    size: widget.size,
                    itens: state.seaMonsters,
                    route: SeaMonsterDetailsView.route,
                    colors: const [AppColors.blue, AppColors.purple],
                  ),
                ],
              ),
            ),
          );
        }
        return const LoadingWidget();
      },
    );
  }
}
