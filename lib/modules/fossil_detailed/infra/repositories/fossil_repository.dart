import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/mappers/i_fossil_mapper.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/repository/i_fossil_repository.dart';
import 'package:dartz/dartz.dart';

class FossilRepository implements IFossilRepository {
  @override
  IApiBase apiBase;
  @override
  String endpoint;
  @override
  IFossilMapper mapper;

  FossilRepository({
    required this.apiBase,
    required this.endpoint,
    required this.mapper,
  });

  @override
  Future<Either<ApiException, List<Fossil>>> getAllFossils() async {
    try {
      final result = await apiBase.get(endpoint: endpoint);

      if (result.isLeft()) {
        return Left(result.left());
      }
      final fossils = mapper.fromMaps(result.right());

      return Right(fossils);
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
  Future<Either<ApiException, Fossil>> getFossilByName(String name) async {
    try {
      final result = await apiBase.get(endpoint: "$endpoint/$name");

      if (result.isLeft()) {
        return Left(result.left());
      }

      final fossil = mapper.fromMap(result.right());

      return Right(fossil);
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
