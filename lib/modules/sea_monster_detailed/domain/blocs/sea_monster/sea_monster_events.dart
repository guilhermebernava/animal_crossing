abstract class SeaMonsterEvents {}

class SeaMonsterClear implements SeaMonsterEvents {}

class SeaMonsterGetAll implements SeaMonsterEvents {}

class SeaMonsterGetById implements SeaMonsterEvents {
  final String id;

  SeaMonsterGetById({
    required this.id,
  });
}

class SeaMonsterSearch implements SeaMonsterEvents {
  final String text;

  SeaMonsterSearch({
    required this.text,
  });
}
