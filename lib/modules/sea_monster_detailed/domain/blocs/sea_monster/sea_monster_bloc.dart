import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/repositories/i_sea_monster_repository.dart';
import 'package:bloc/bloc.dart';

class SeaMonsterBloc extends Bloc<SeaMonsterEvents, SeaMonsterStates> {
  final ISeaMonsterRepository seaMonsterRepository;
  final List<SeaMonster> seaMonsters = [];

  SeaMonsterBloc({
    required this.seaMonsterRepository,
  }) : super(SeaMonsterLoading()) {
    on<SeaMonsterGetAll>((event, emit) async {
      emit(SeaMonsterLoading());

      final result = await seaMonsterRepository.getAll();

      if (result.isLeft()) {
        return emit(SeaMonsterError());
      }

      seaMonsters.addAll(result.right());
      emit(SeaMonsters(seaMonsters: result.right()));
    });

    on<SeaMonsterClear>((event, emit) {
      emit(SeaMonsters(seaMonsters: seaMonsters));
    });

    on<SeaMonsterGetById>((event, emit) async {
      emit(SeaMonsterLoading());

      final result = await seaMonsterRepository.getById(event.id);

      if (result.isLeft()) {
        return emit(SeaMonsterError());
      }

      emit(SeaMonsters(
        seaMonsters: [
          result.right(),
        ],
      ));
    });

    on<SeaMonsterSearch>((event, emit) {
      final filtredList = seaMonsters
          .where((element) => element.name.contains(event.text))
          .toList();

      emit(SeaMonsters(seaMonsters: filtredList));
    });
  }
}
