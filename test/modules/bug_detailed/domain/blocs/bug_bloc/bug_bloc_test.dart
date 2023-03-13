import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_bloc.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/mappers/bug_mapper.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/repositories/bug_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = BugRepository(
    endpoint: ApiEndpoints.bugEndpoint,
    mapper: BugMapper(),
    apiBase: apiBase,
  );

  blocTest<BugBloc, BugStates>(
    'emits [bugs]',
    build: () => BugBloc(
      bugRepository: repository,
    ),
    act: (bloc) => bloc.add(BugClear()),
    expect: () => [isA<Bugs>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<BugBloc, BugStates>(
    'emits [BugLoading, Bugs] when have sucess getting bug by name',
    build: () => BugBloc(
      bugRepository: repository,
    ),
    act: (bloc) => bloc.add(SearchBug(text: "oar")),
    expect: () => [isA<BugLoading>(), isA<Bugs>()],
    wait: const Duration(seconds: 1),
  );

  blocTest<BugBloc, BugStates>(
    'emits [BugLoading, Bugs] when have sucess getting bug by ID',
    build: () => BugBloc(
      bugRepository: repository,
    ),
    act: (bloc) => bloc.add(GetBugById(id: "1")),
    expect: () => [isA<BugLoading>(), isA<Bugs>()],
    wait: const Duration(seconds: 4),
  );

  blocTest<BugBloc, BugStates>(
    'emits [BugLoading, Bugs] when have sucess getting all bugs',
    build: () => BugBloc(
      bugRepository: repository,
    ),
    act: (bloc) => bloc.add(GetAllBugs()),
    expect: () => [isA<BugLoading>(), isA<Bugs>()],
    wait: const Duration(seconds: 1),
  );
}
