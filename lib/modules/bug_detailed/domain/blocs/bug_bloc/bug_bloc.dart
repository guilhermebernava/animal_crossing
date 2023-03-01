import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_events.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_states.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/interfaces/repositories/i_bug_repository.dart';
import 'package:bloc/bloc.dart';

class BugBloc extends Bloc<BugEvents, BugStates> {
  final IBugRepository bugRepository;
  final List<Bug> bugs = [];

  BugBloc({
    required this.bugRepository,
  }) : super(BugLoading()) {
    //TODO adicionar EVENTOS ao BLOC
    on<GetAllBugs>(
      (event, emit) async {
        emit(BugLoading());
        final result = await bugRepository.getAll();

        if (result.isLeft()) {
          emit(
            BugError(
              error: result.left().message,
            ),
          );
          return;
        }

        bugs.clear();
        bugs.addAll(result.right());

        emit(Bugs(bugs: result.right()));
      },
    );
  }
}
