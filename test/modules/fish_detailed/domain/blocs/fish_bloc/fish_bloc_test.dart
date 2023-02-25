import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_bloc.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/repositories/fish_repository.dart';
import 'package:animal_crossing/modules/fish_detailed/repositories/mappers/fish_mapper.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = FishRepository(
    endpoint: "fish",
    mapper: FishMapper(),
    apiBase: apiBase,
  );

  blocTest<FishBloc, FishStates>(
    'emits [Fishes] when have sucess getting fish by ID',
    build: () => FishBloc(
      fishRepository: repository,
    ),
    act: (bloc) => bloc.add(FishSearch(text: "oar")),
    expect: () => [isA<FishLoading>(), isA<Fishes>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<FishBloc, FishStates>(
    'emits [Fishes] when have sucess getting fish by ID',
    build: () => FishBloc(
      fishRepository: repository,
    ),
    act: (bloc) => bloc.add(FishGetById(id: "1")),
    expect: () => [isA<FishLoading>(), isA<Fishes>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<FishBloc, FishStates>(
    'emits [Fishes] when have sucess getting all fishes',
    build: () => FishBloc(
      fishRepository: repository,
    ),
    act: (bloc) => bloc.add(FishGetAll()),
    expect: () => [isA<FishLoading>(), isA<Fishes>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<FishBloc, FishStates>(
    'emits [Fishes] when have sucess getting fish by ID',
    build: () => FishBloc(
      fishRepository: repository,
    ),
    act: (bloc) => bloc.add(FishGetById(id: "2039818423842349239423904")),
    expect: () => [isA<FishLoading>()],
    wait: const Duration(seconds: 2),
  );
}
