import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_bloc.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_events.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_states.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/mappers/sea_monster_mapper.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/repositories/sea_monster_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = SeaMonsterRepository(
    endpoint: ApiEndpoints.seaMonsterEndpoint,
    mapper: SeaMonsterMapper(),
    apiBase: apiBase,
  );

  blocTest<SeaMonsterBloc, SeaMonsterStates>(
    'emits [seaMonsters]',
    build: () => SeaMonsterBloc(
      seaMonsterRepository: repository,
    ),
    act: (bloc) => bloc.add(SeaMonsterClear()),
    expect: () => [isA<SeaMonsters>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<SeaMonsterBloc, SeaMonsterStates>(
    'emits [SeaMonsters] when have sucess getting seaMonster by name',
    build: () => SeaMonsterBloc(
      seaMonsterRepository: repository,
    ),
    act: (bloc) => bloc.add(SeaMonsterSearch(text: "oar")),
    expect: () => [isA<SeaMonsters>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<SeaMonsterBloc, SeaMonsterStates>(
    'emits [SeaMonsterLoading, SeaMonsters] when have sucess getting seaMonster by ID',
    build: () => SeaMonsterBloc(
      seaMonsterRepository: repository,
    ),
    act: (bloc) => bloc.add(SeaMonsterGetById(id: "1")),
    expect: () => [isA<SeaMonsterLoading>(), isA<SeaMonsters>()],
    wait: const Duration(seconds: 4),
  );

  blocTest<SeaMonsterBloc, SeaMonsterStates>(
    'emits [SeaMonsterLoading, SeaMonsters] when have sucess getting all seaMonsters',
    build: () => SeaMonsterBloc(
      seaMonsterRepository: repository,
    ),
    act: (bloc) => bloc.add(SeaMonsterGetAll()),
    expect: () => [isA<SeaMonsterLoading>(), isA<SeaMonsters>()],
    wait: const Duration(seconds: 1),
  );
}
