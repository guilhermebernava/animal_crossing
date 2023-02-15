import 'dart:isolate';

import 'package:animal_crossing/commons/api/dtos/get_dto.dart';
import 'package:animal_crossing/commons/api/exceptions/api_exception.dart';
import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiBase implements IApiBase {
  @override
  final String baseUrl;
  @override
  final Dio dio = Dio();

  ApiBase({
    required this.baseUrl,
  });

  @override
  Future<Either<ApiException, Map>> get({required String endpoint}) async {
    final port = ReceivePort();
    await Isolate.spawn<GetDto>(
      (props) async {
        final response = await dio.getUri(props.endpoint);

        Isolate.exit(props.sendPort, response);
      },
      GetDto(
        endpoint: Uri.parse(
          baseUrl + endpoint,
        ),
        sendPort: port.sendPort,
      ),
    );
    final response = await port.first;
    port.close();

    if (response.statusCode != 200) {
      return Left(
        ApiException(
            endpoint: endpoint,
            message: "error in request \n status-code: ${response.statusCode}"),
      );
    }

    return Right(response.data);
  }
}
