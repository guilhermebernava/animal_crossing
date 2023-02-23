import 'package:animal_crossing/commons/design/app_colors.dart';
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
    widget.fishBloc.add(FishGetAll());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: widget.fishBloc,
        builder: (_, state) {
          if (state is Fishes) {
            return Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                //TODO implementar pesquisa;
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 4,
                          color: AppColors.white,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 4,
                          color: AppColors.white,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: "Search",
                      fillColor: AppColors.white,
                      filled: true,
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.search,
                          color: AppColors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                ListContainer(
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
