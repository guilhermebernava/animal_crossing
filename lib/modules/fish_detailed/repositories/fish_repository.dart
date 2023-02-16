import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/mappers/i_fish_mapper.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/repositories/i_fish_repository.dart';
import 'package:dartz/dartz.dart';

class FishRepository implements IFishRepository {
  @override
  String endpoint;
  @override
  IFishMapper mapper;
  @override
  IApiBase apiBase;

  FishRepository({
    required this.endpoint,
    required this.mapper,
    required this.apiBase,
  });

  @override
  Future<Either<ApiException, List<Fish>>> getAllFishs() async {
    final response = await apiBase.get(endpoint: endpoint);

    if (response.isLeft()) {
      return Left(
        response.left(),
      );
    }

    return Right(
      mapper.fromMaps(
        response.right(),
      ),
    );
  }

  @override
  Future<Either<ApiException, Fish>> getFishById(String id) async {
    final response = await apiBase.get(endpoint: '$endpoint/$id');

    if (response.isLeft()) {
      return Left(
        response.left(),
      );
    }

    return Right(
      mapper.fromMap(
        response.right(),
      ),
    );
  }
}
