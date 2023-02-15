import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final service = ApiBase(
    baseUrl: "https://acnhapi.com/v1a/",
  );

  test("Test get Correctly due valid endpoint", () async {
    final response = await service.get(endpoint: "fish/1");
    expect(response.isRight(), true);
    expect(response.right(), isA<Map>());
  });

  test("Test get Incorrect due invalid endpoint", () async {
    final response = await service.get(endpoint: "ajsdahjsdhjads");
    expect(response.isLeft(), true);
  });
}
