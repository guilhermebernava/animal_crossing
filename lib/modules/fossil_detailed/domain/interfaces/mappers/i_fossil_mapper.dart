import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';

abstract class IFossilMapper {
  Fossil fromMap(Map map);
  List<Fossil> fromMaps(List<dynamic> map);
}
