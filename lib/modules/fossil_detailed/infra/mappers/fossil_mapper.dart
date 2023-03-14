import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/mappers/i_fossil_mapper.dart';

class FossilMapper implements IFossilMapper {
  @override
  Fossil fromMap(Map map) {
    String name = map["file-name"] as String;

    if (name.contains("_")) {
      final arr = name.split("_");
      name = arr.join(" ");
    }

    return Fossil(
      uncleanName: map["file-name"],
      imageUrl: map["image_uri"],
      name: name,
      price: map["price"],
      description: map["museum-phrase"],
    );
  }

  @override
  List<Fossil> fromMaps(List maps) {
    final fossils = <Fossil>[];

    for (var map in maps) {
      fossils.add(fromMap(map));
    }
    return fossils;
  }
}
