import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_endpoint_repository.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/mappers/i_fish_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class IFishRepository implements IBaseEndpointRepository {
  final IFishMapper mapper;

  IFishRepository({
    required this.mapper,
  });

  Future<Either<ApiException, List<Fish>>> getAllFishs();
  Future<Either<ApiException, Fish>> getFishById(String id);
}
