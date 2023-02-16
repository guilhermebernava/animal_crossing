import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/mappers/i_fish_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class IFishRepository {
  final String endpoint;
  final IFishMapper mapper;
  final IApiBase apiBase;

  IFishRepository({
    required this.endpoint,
    required this.mapper,
    required this.apiBase,
  });

  Future<Either<ApiException, List<Fish>>> getAllFishs();
  Future<Either<ApiException, Fish>> getFishById(String id);
}
