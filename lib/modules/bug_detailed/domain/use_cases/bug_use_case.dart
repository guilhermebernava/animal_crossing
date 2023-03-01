import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/use_cases/bug_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class BugUseCase implements IBugUseCase {
  @override
  Bloc<BugEvents, BugStates> bugBloc;
  @override
  TextEditingController searchController = TextEditingController();

  BugUseCase({
    required this.bugBloc,
  });

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void search() {
    // TODO: implement search
  }
}
