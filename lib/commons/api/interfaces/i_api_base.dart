import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class IApiBase {
  final String baseUrl;
  final Dio dio;

  IApiBase({
    required this.baseUrl,
    required this.dio,
  });

  Future<Either<ApiException, dynamic>> get({required String endpoint});
}
