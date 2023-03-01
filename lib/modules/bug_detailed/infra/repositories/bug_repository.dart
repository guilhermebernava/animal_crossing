import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/mappers/i_bug_mapper.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/repositories/i_bug_repository.dart';
import 'package:dartz/dartz.dart';

class BugRepository implements IBugRepository {
  @override
  IApiBase apiBase;
  @override
  String endpoint;
  @override
  IBugMapper mapper;

  BugRepository({
    required this.apiBase,
    required this.endpoint,
    required this.mapper,
  });

  @override
  Future<Either<ApiException, List<Bug>>> getAll() async {
    try {
      final result = await apiBase.get(endpoint: endpoint);
      if (result.isLeft()) {
        return Left(result.left());
      }

      final bugs = mapper.fromMaps(result.right());
      return Right(bugs);
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
  Future<Either<ApiException, Bug>> getById(String id) async {
    try {
      final result = await apiBase.get(endpoint: "$endpoint/$id");
      if (result.isLeft()) {
        return Left(result.left());
      }

      final bug = mapper.fromMap(result.right());
      return Right(bug);
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
