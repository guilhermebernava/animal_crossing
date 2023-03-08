import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/interfaces/mappers/i_sea_monster_mapper.dart';

class SeaMonsterMapper implements ISeaMonsterMapper {
  @override
  SeaMonster fromMap(Map map) {
    String name = map["file-name"] as String;

    if (name.contains("_")) {
      final arr = name.split("_");
      name = arr.join(" ");
    }

    return SeaMonster(
      iconUrl: map["icon_uri"],
      id: map["id"],
      imageUrl: map["image_uri"],
      name: name,
      price: map["price"],
      description: map["museum-phrase"],
      speed: map["speed"],
      catchPhrase: map["catch-phrase"],
      shadow: map["shadow"],
    );
  }

  @override
  List<SeaMonster> fromMaps(List<dynamic> maps) {
    final fishes = <SeaMonster>[];

    for (var map in maps) {
      fishes.add(fromMap(map));
    }
    return fishes;
  }
}
