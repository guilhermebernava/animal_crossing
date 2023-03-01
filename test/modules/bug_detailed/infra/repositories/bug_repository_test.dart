import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/mappers/bug_mapper.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/repositories/bug_repository.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
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

  test('It should get an bug with correct ID', () async {
    final bug = await repository.getById("1");

    expect(bug.isRight(), true);
    expect(bug.right(), isA<Bug>());
  });

  test('It should get all buges', () async {
    final bug = await repository.getAll();

    expect(bug.isRight(), true);
    expect(bug.right(), isA<List<Bug>>());
  });
}
