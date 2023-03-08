import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/repositories/i_fish_repository.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/repositories/i_sea_monster_repository.dart';
import 'package:bloc/bloc.dart';

class SeaMonsterBloc extends Bloc<SeaMonsterEvents, SeaMonsterStates> {
  final ISeaMonsterRepository fishRepository;
  final List<SeaMonster> seaMosnters = [];

  SeaMonsterBloc({
    required this.fishRepository,
  }) : super(SeaMonsterLoading());
}
