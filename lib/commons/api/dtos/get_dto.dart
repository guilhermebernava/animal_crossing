import 'dart:isolate';

class GetDto {
  final Uri endpoint;
  final SendPort sendPort;

  GetDto({
    required this.endpoint,
    required this.sendPort,
  });
}
