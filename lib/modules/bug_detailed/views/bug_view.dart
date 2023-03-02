import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/commons/widgets/app_bar/transparent_app_bar_widget.dart';
import 'package:animal_crossing/commons/widgets/inputs/search_input.dart';
import 'package:animal_crossing/commons/widgets/loading_widget.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/use_cases/bug_use_case.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_view/bug_body.dart';
import 'package:animal_crossing/modules/bug_detailed/widgets/bug_view/bug_grid_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BugView extends StatefulWidget {
  final IBugUseCase useCase;
  const BugView({
    super.key,
    required this.useCase,
  });

  @override
  State<BugView> createState() => _BugViewState();
}

class _BugViewState extends State<BugView> {
  @override
  void initState() {
    super.initState();
    widget.useCase.bugBloc.add(GetAllBugs());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder(
        bloc: widget.useCase.bugBloc,
        builder: (_, state) {
          if (state is Bugs) {
            return BugBody(
              size: size,
              children: [
                TransparentAppBarWidget(
                  onTap: () => Modular.to.navigate(AppRoutes.homeModule),
                ),
                SearchInput(
                  controller: widget.useCase.searchController,
                ),
                BugGridAnimation(
                  size: size,
                  bugs: state.bugs,
                )
              ],
            );
          }
          return const LoadingWidget();
        },
      ),
    );
  }
}
