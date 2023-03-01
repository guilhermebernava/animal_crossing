import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/infra/repositories/fish_repository.dart';
import 'package:animal_crossing/modules/fish_detailed/infra/mappers/fish_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = FishRepository(
    endpoint: ApiEndpoints.fishEndpoint,
    mapper: FishMapper(),
    apiBase: apiBase,
  );

  test('It should get an fish with correct ID', () async {
    final fish = await repository.getFishById("1");

    expect(fish.isRight(), true);
    expect(fish.right(), isA<Fish>());
  });

  test('It should get all fishes', () async {
    final fish = await repository.getAllFishs();

    expect(fish.isRight(), true);
    expect(fish.right(), isA<List<Fish>>());
  });
}
