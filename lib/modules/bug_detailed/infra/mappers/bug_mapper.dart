import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/mappers/i_bug_mapper.dart';

class BugMapper implements IBugMapper {
  @override
  Bug fromMap(Map map) {
    String name = map["file-name"] as String;

    if (name.contains("_")) {
      final arr = name.split("_");
      name = arr.join(" ");
    }

    return Bug(
      iconUrl: map["icon_uri"],
      id: map["id"],
      imageUrl: map["image_uri"],
      name: name,
      price: double.parse(map["price"].toString()),
      description: map["museum-phrase"],
      location: map["availability"]["location"],
      rarity: map["availability"]["rarity"],
      time: map["availability"]["time"],
      priceFlick: double.parse(map["price-flick"].toString()),
      catchPhrase: map["catch-phrase"],
      monthsNorthern: map["availability"]["month-northern"],
      monthsSouthern: map["availability"]["month-southern"],
    );
  }

  @override
  List<Bug> fromMaps(List<dynamic> maps) {
    final bugs = <Bug>[];

    for (var map in maps) {
      bugs.add(fromMap(map));
    }
    return bugs;
  }
}
