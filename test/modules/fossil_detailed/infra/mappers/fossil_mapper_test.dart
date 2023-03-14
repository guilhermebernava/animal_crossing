import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/mappers/fossil_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mapper = FossilMapper();
  final map = {
    "file-name": "amber",
    "name": {
      "name-USen": "amber",
      "name-EUen": "amber",
      "name-EUde": "Bernstein",
      "name-EUes": "ámbar",
      "name-USes": "ámbar",
      "name-EUfr": "ambre",
      "name-USfr": "ambre",
      "name-EUit": "ambra",
      "name-EUnl": "barnsteen",
      "name-CNzh": "琥珀",
      "name-TWzh": "琥珀",
      "name-JPja": "コハク",
      "name-KRko": "호박",
      "name-EUru": "янтарь"
    },
    "price": 1200,
    "museum-phrase":
        "Amber is formed from the sap of ancient trees that hardened over time. Because of its beauty, it has often been traded and used as jewelry throughout history. However, individual specimens may contain ancient plants or insects trapped inside them! These are valuable resources for learning about ancient eras, such as when the dinosaurs roamed... And this is why they are sometimes displayed in certain...ahem... exceptional museums! Like mine.",
    "image_uri": "https://acnhapi.com/v1/images/fossils/amber"
  };
  test('It should map into fossil', () async {
    final entity = mapper.fromMap(map);
    expect(entity, isA<Fossil>());
  });
}
