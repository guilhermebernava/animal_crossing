abstract class FishEvents {}

class FishGetById implements FishEvents {
  final String id;

  FishGetById({
    required this.id,
  });
}

class FishGetAll implements FishEvents {}
