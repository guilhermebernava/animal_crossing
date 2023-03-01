import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_endpoint_repository.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/mappers/i_bug_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class IBugRepository implements IBaseEndpointRepository {
  final IBugMapper mapper;

  IBugRepository({
    required this.mapper,
  });

  Future<Either<ApiException, List<Bug>>> getAll();
  Future<Either<ApiException, Bug>> getById(String id);
}
