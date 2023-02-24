abstract class FishEvents {}

class FishGetById implements FishEvents {
  final String id;

  FishGetById({
    required this.id,
  });
}

class FishSearch implements FishEvents {
  final String text;

  FishSearch({
    required this.text,
  });
}

class FishGetAll implements FishEvents {}
