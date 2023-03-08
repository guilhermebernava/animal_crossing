import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/mappers/sea_monster_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const map = {
    "id": 1,
    "file-name": "seaweed",
    "name": {
      "name-USen": "seaweed",
      "name-EUen": "seaweed",
      "name-EUnl": "zeewier",
      "name-EUde": "Wakame-Alge",
      "name-EUes": "alga wakame",
      "name-USes": "alga wakame",
      "name-EUfr": "wakame",
      "name-USfr": "wakamé",
      "name-EUit": "alga wakame",
      "name-CNzh": "裙带菜",
      "name-TWzh": "裙帶菜",
      "name-JPja": "ワカメ",
      "name-KRko": "미역",
      "name-EUru": "морские водоросли"
    },
    "availability": {
      "month-northern": "10-7",
      "month-southern": "4-1",
      "time": "",
      "isAllDay": true,
      "isAllYear": false,
      "month-array-northern": [10, 11, 12, 1, 2, 3, 4, 5, 6, 7],
      "month-array-southern": [4, 5, 6, 7, 8, 9, 10, 11, 12, 1],
      "time-array": [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23
      ]
    },
    "speed": "Stationary",
    "shadow": "Large",
    "price": 600,
    "catch-phrase": "I got some seaweed! I couldn't kelp myself.",
    "image_uri": "https://acnhapi.com/v1/images/sea/1",
    "icon_uri": "https://acnhapi.com/v1/icons/sea/1",
    "museum-phrase":
        "Let it be known that seaweed is a misnomer of the highest order! That is, it is not a noxious weed so much as it is a marine algae most beneficial to life on land and sea. Seaweed, you see, provides essential habitat and food for all manner of marine creatures. And it creates a great deal of the oxygen we land lovers love to breath too, hoo! And yet, I can't help but shudder when the slimy stuff touches my toes during a swim. Hoot! The horror!"
  };

  final mapper = SeaMonsterMapper();

  test('It should decode map', () {
    final seaMonster = mapper.fromMap(map);
    expect(seaMonster, isA<SeaMonster>());
  });
}
