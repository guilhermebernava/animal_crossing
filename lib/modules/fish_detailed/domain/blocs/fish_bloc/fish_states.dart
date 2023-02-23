import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';

abstract class FishStates {}

class FishLoading implements FishStates {}

class FishError implements FishStates {}

class Fishes implements FishStates {
  final List<Fish> fishes;

  Fishes({
    required this.fishes,
  });
}
