import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';

abstract class IFishMapper {
  Fish fromMap(Map map);

  List<Fish> fromMaps(List<dynamic> maps);
}
