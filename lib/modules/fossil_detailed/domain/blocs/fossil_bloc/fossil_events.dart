abstract class FossilEvents {}

class FossilGetAll implements FossilEvents {}

class FossilGetByName implements FossilEvents {
  final String name;

  FossilGetByName({required this.name});
}

class FossilSearch implements FossilEvents {
  final String text;

  FossilSearch({
    required this.text,
  });
}

class FossilClear implements FossilEvents {}
