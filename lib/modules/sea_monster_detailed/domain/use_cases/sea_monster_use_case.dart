import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/repositories/i_sea_monster_repository.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/use_cases/i_sea_monster_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SeaMonsterUseCase implements ISeaMonsterUseCase {
  @override
  Bloc<SeaMonsterEvents, SeaMonsterStates> bloc;
  @override
  ISeaMonsterRepository seaMonsterRepository;
  @override
  TextEditingController searchController = TextEditingController();

  SeaMonsterUseCase({
    required this.bloc,
    required this.seaMonsterRepository,
  });

  @override
  void clear() => bloc.add(SeaMonsterClear());

  @override
  void init() => bloc.add(SeaMonsterGetAll());

  @override
  void search() {
    if (searchController.text != "") {
      return bloc.add(
        SeaMonsterSearch(
          text: searchController.text,
        ),
      );
    }

    return clear();
  }
}
