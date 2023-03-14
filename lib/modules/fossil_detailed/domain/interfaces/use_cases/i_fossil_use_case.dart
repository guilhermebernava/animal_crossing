import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_events.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

abstract class IFossilUseCase {
  final Bloc<FossilEvents, FossilStates> bloc;
  final TextEditingController searchController;

  IFossilUseCase({
    required this.bloc,
    required this.searchController,
  });

  void search();
  void init();
  void clear();
}
