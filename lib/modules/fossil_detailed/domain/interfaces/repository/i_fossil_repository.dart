import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_endpoint_repository.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/mappers/i_fossil_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class IFossilRepository implements IBaseEndpointRepository {
  final IFossilMapper mapper;

  IFossilRepository({
    required this.mapper,
  });

  Future<Either<ApiException, List<Fossil>>> getAllFossils();
  Future<Either<ApiException, Fossil>> getFossilByName(String name);
}
