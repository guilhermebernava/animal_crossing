import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class IFishUseCase {
  final Bloc<FishEvents, FishStates> fishBloc;
  final TextEditingController searchController;

  IFishUseCase({
    required this.fishBloc,
    required this.searchController,
  });

  void search();
  void clear();
}
