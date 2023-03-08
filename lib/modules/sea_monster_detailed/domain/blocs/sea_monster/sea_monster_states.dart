import 'package:animal_crossing/modules/sea_monster_detailed/domain/entities/sea_monster.dart';

abstract class SeaMonsterStates {}

class SeaMonsters implements SeaMonsterStates {
  final List<SeaMonster> seaMonsters;

  SeaMonsters({
    required this.seaMonsters,
  });
}

class SeaMonsterLoading implements SeaMonsterStates {}

class SeaMonsterError implements SeaMonsterStates {}
