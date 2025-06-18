void testFunction() {
  var intList = [1, 2, 3];

  var copy = List<int>.from(intList); // LINT
  print(copy);
  var numList = List<num>.from(intList); // LINT
  print(numList);

  var unspecifiedList = List.from(intList); // LINT
  print(unspecifiedList);

  final recordsSet = <(num,)>{(1,), (2,), (3,)};
  final recordSet = Set<(num,)>.from(recordsSet); // LINT
  print(recordSet);

  // TODO: This should throw a lint error if the type is not specified.
  final extra = Set<(int, String)>.from(recordsSet); // LINT
  print(extra);
}
