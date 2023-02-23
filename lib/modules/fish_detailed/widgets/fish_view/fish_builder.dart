import 'package:animal_crossing/commons/widgets/loading_widget.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/widgets/fish_view/list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FishBuilder extends StatefulWidget {
  final Bloc<FishEvents, FishStates> fishBloc;
  final Size size;

  const FishBuilder({
    super.key,
    required this.fishBloc,
    required this.size,
  });

  @override
  State<FishBuilder> createState() => _FishBuilderState();
}

class _FishBuilderState extends State<FishBuilder> {
  @override
  void initState() {
    super.initState();
    widget.fishBloc.add(FishGetById(id: "1"));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: widget.fishBloc,
        builder: (_, state) {
          if (state is Fishes) {
            return ListContainer(
              size: widget.size,
              fishes: state.fishes,
            );
          }
          return const LoadingWidget();
        });
  }
}
