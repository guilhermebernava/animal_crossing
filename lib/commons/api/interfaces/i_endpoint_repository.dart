import 'package:animal_crossing/commons/api/interfaces/i_api_base.dart';

abstract class IBaseEndpointRepository {
  final String endpoint;
  final IApiBase apiBase;

  IBaseEndpointRepository({
    required this.endpoint,
    required this.apiBase,
  });
}
