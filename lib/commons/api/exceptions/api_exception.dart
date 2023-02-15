class ApiException implements Exception {
  final String message;
  final String endpoint;

  ApiException({
    required this.endpoint,
    required this.message,
  });
}
