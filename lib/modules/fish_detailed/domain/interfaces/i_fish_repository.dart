import 'package:dartz/dartz.dart';

abstract class IFishRepository {
  final String endpoint;

  IFishRepository({
    required this.endpoint,
  });

  //TODO adicionar retornos
  Future<Either<void, void>> getAllFishs();
  Future<Either<void, void>> getFishById();
}
