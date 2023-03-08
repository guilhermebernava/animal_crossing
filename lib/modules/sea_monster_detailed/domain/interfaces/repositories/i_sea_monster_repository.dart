import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_endpoint_repository.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/mappers/i_sea_monster_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class ISeaMonsterRepository implements IBaseEndpointRepository {
  final ISeaMonsterMapper mapper;

  ISeaMonsterRepository({
    required this.mapper,
  });

  Future<Either<ApiException, List<SeaMonster>>> getAll();
  Future<Either<ApiException, SeaMonster>> getById(String id);
}
