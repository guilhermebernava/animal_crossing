import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_bloc.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_events.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_states.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/mappers/fossil_mapper.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/repositories/fossil_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = FossilRepository(
    endpoint: "fish",
    mapper: FossilMapper(),
    apiBase: apiBase,
  );

  blocTest<FossilBloc, FossilStates>(
    'emits [Fossils]',
    build: () => FossilBloc(
      fossilRepository: repository,
    ),
    act: (bloc) => bloc.add(FossilClear()),
    expect: () => [isA<Fossils>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<FossilBloc, FossilStates>(
    'emits [Fossils] when have sucess getting fish by ID',
    build: () => FossilBloc(
      fossilRepository: repository,
    ),
    act: (bloc) => bloc.add(FossilSearch(text: "oar")),
    expect: () => [isA<FossilLoading>(), isA<Fossils>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<FossilBloc, FossilStates>(
    'emits [Fossils] when have sucess getting fish by ID',
    build: () => FossilBloc(
      fossilRepository: repository,
    ),
    act: (bloc) => bloc.add(FossilGetByName(name: "amber")),
    expect: () => [isA<FossilLoading>(), isA<Fossils>()],
    wait: const Duration(seconds: 4),
  );

  blocTest<FossilBloc, FossilStates>(
    'emits [Fossils] when have sucess getting all fishes',
    build: () => FossilBloc(
      fossilRepository: repository,
    ),
    act: (bloc) => bloc.add(FossilGetAll()),
    expect: () => [isA<FossilLoading>(), isA<Fossils>()],
    wait: const Duration(seconds: 1),
  );

  //TODO bug no teste
  // blocTest<FossilBloc, FossilStates>(
  //   'emits [Fossils] when have sucess getting fish by ID',
  //   build: () => FossilBloc(
  //     fossilRepository: repository,
  //   ),
  //   act: (bloc) => bloc.add(FossilGetByName(name: "2039818423842349239423904")),
  //   expect: () => [isA<FossilLoading>()],
  //   wait: const Duration(seconds: 1),
  // );
}
