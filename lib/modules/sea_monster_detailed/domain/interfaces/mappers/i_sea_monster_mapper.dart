import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';

abstract class ISeaMonsterMapper {
  SeaMonster fromMap(Map map);
  List<SeaMonster> fromMaps(List<dynamic> maps);
}
