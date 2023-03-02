import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/use_cases/bug_use_case.dart';
import 'package:animal_crossing/modules/bug_detailed/views/bug_detailed_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BugUseCase implements IBugUseCase {
  @override
  Bloc<BugEvents, BugStates> bugBloc;
  @override
  TextEditingController searchController = TextEditingController();

  BugUseCase({
    required this.bugBloc,
  }) {
    searchController.addListener(search);
  }

  @override
  void clear() => bugBloc.add(GetAllBugs());

  @override
  void dispose() {
    searchController.removeListener(search);
    searchController.dispose();
  }

  @override
  void search() {
    if (searchController.text != "") {
      bugBloc.add(SearchBug(text: searchController.text));
    }
  }

  @override
  void toDetail(Bug bug) => Modular.to.pushNamed(
        ".${BugDetailedView.route}",
        arguments: bug,
      );
}
