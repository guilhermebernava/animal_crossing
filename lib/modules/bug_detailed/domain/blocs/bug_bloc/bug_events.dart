abstract class BugEvents {}

class GetAllBugs implements BugEvents {}

class GetBugById implements BugEvents {
  final String id;

  GetBugById({required this.id});
}

class SearchBug implements BugEvents {
  final String text;

  SearchBug({required this.text});
}
