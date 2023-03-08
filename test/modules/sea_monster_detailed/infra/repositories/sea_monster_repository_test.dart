import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/mappers/sea_monster_mapper.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/repositories/sea_monster_repository.dart';
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

  test('It should get an seaMonster with correct ID', () async {
    final seaMonster = await repository.getById("1");

    expect(seaMonster.isRight(), true);
    expect(seaMonster.right(), isA<SeaMonster>());
  });

  test('It should get all seaMonsteres', () async {
    final seaMonster = await repository.getAll();

    expect(seaMonster.isRight(), true);
    expect(seaMonster.right(), isA<List<SeaMonster>>());
  });
}
