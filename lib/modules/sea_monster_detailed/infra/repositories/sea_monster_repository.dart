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
  Future<Either<ApiException, List<SeaMonster>>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, SeaMonster>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
