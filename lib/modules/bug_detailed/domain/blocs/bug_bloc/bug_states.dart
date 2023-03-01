import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';

abstract class BugStates {}

class Bugs implements BugStates {
  final List<Bug> bugs;

  Bugs({
    required this.bugs,
  });
}

class BugLoading implements BugStates {}

class BugError implements BugStates {
  final String error;

  BugError({
    required this.error,
  });
}
