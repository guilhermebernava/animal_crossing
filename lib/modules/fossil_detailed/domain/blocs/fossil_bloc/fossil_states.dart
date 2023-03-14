import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';

abstract class FossilStates {}

class Fossils implements FossilStates {
  final List<Fossil> fossils;

  Fossils({
    required this.fossils,
  });
}

class FossilLoading implements FossilStates {}

class FossilError implements FossilStates {}
