import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/mappers/i_sea_monster_mapper.dart';
import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/repositories/i_sea_monster_repository.dart';
import 'package:dartz/dartz.dart';

class SeaMonsterRepository implements ISeaMonsterRepository {
  @override
  IApiBase apiBase;
  @override
  String endpoint;
  @override
  ISeaMonsterMapper mapper;

  SeaMonsterRepository({
    required this.apiBase,
    required this.endpoint,
    required this.mapper,
  });

  @override
  Future<Either<ApiException, List<SeaMonster>>> getAll() async {
    try {
      final result = await apiBase.get(endpoint: endpoint);

      if (result.isLeft()) {
        throw ApiException(
            endpoint: endpoint, message: "error in getting sea monsters");
      }
      final seaMonsters = mapper.fromMaps(result.right());

      return Right(seaMonsters);
    } catch (e) {
      return Left(
        ApiException(
          endpoint: endpoint,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<ApiException, SeaMonster>> getById(String id) async {
    try {
      final result = await apiBase.get(endpoint: "$endpoint/$id");

      if (result.isLeft()) {
        throw ApiException(
            endpoint: endpoint, message: "error in getting sea monsters");
      }
      final seaMonster = mapper.fromMap(result.right());

      return Right(seaMonster);
    } catch (e) {
      return Left(
        ApiException(
          endpoint: endpoint,
          message: e.toString(),
        ),
      );
    }
  }
}
