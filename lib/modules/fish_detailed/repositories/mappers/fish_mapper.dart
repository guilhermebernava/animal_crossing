import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/mappers/i_fish_mapper.dart';

class FishMapper implements IFishMapper {
  @override
  Fish fromMap(Map map) {
    String name = map["file-name"] as String;

    if (name.contains("_")) {
      final arr = name.split("_");
      name = arr.join(" ");
    }

    return Fish(
      iconUrl: map["icon_uri"],
      id: map["id"],
      imageUrl: map["image_uri"],
      name: name,
      price: map["price"],
      description: map["museum-phrase"],
    );
  }

  @override
  List<Fish> fromMaps(List<dynamic> maps) {
    final fishes = <Fish>[];

    for (var map in maps) {
      fishes.add(fromMap(map));
    }
    return fishes;
  }
}
