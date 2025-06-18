class AvoidUneccesaryTypeAssertions {
  final myList = <int>[1, 2, 3];

  void main() {
    final result = myList is List<int>; // LINT
  }
}
