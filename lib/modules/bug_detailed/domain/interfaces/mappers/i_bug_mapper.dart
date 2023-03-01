import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';

abstract class IBugMapper {
  List<Bug> fromMaps(List<dynamic> maps);
  Bug fromMap(Map map);
}
