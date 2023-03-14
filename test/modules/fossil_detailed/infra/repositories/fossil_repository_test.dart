import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/mappers/fossil_mapper.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/repositories/fossil_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final apiBase = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  final repository = FossilRepository(
    endpoint: ApiEndpoints.fossilEndpoint,
    mapper: FossilMapper(),
    apiBase: apiBase,
  );

  test('It should get an fish with correct ID', () async {
    final fish = await repository.getFossilByName("amber");

    expect(fish.isRight(), true);
    expect(fish.right(), isA<Fossil>());
  });

  test('It should get all fishes', () async {
    final fish = await repository.getAllFossils();

    expect(fish.isRight(), true);
    expect(fish.right(), isA<List<Fossil>>());
  });
}
