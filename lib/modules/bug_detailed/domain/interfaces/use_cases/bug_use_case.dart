import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class IBugUseCase {
  final Bloc<BugEvents, BugStates> bugBloc;
  final TextEditingController searchController;

  IBugUseCase({
    required this.searchController,
    required this.bugBloc,
  });

  void search();
  void clear();
  void toDetail(Bug bug);
}
