import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/repositories/i_sea_monster_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

abstract class ISeaMonsterUseCase {
  final Bloc<SeaMonsterEvents, SeaMonsterStates> bloc;
  final ISeaMonsterRepository seaMonsterRepository;
  final TextEditingController searchController;

  ISeaMonsterUseCase({
    required this.bloc,
    required this.seaMonsterRepository,
    required this.searchController,
  });

  void search();
  void clear();
  void init();
}
