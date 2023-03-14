import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_states.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_events.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/use_cases/i_fossil_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FossilUseCase implements IFossilUseCase {
  @override
  Bloc<FossilEvents, FossilStates> bloc;
  @override
  TextEditingController searchController = TextEditingController();

  FossilUseCase({
    required this.bloc,
  });

  @override
  void clear() => bloc.add(FossilClear());

  @override
  void init() => bloc.add(FossilGetAll());

  @override
  void search() {
    if (searchController.text != "") {
      return bloc.add(
        FossilSearch(text: searchController.text),
      );
    }

    return bloc.add(FossilClear());
  }
}
