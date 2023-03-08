import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/use_cases/i_fish_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FishUseCase implements IFishUseCase {
  @override
  Bloc<FishEvents, FishStates> fishBloc = Modular.get();
  @override
  TextEditingController searchController = TextEditingController();

  FishUseCase() {
    searchController.addListener(search);
  }

  @override
  void clear() {
    fishBloc.add(FishClear());
  }

  @override
  void search() {
    if (searchController.text != "") {
      fishBloc.add(FishSearch(text: searchController.text));
      return;
    }
    clear();
  }
}
