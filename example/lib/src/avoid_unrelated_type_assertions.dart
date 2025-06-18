class AvoidUnrelatedTypeAssertions {
  final regularString = '';
  final myList = <int>[1, 2, 3];

  final Animal animal = Animal();

  void main() {
    regularString is int; // LINT
    myList is List<String>; // LINT

    animal is NotAnimal; // LINT
  }

  void patterns() {
    final animal = Animal();

    if (animal case HomeAnimal result) {
      print(result);
    }
    if (animal case HomeAnimal()) {
      print('This is a home animal');
    }

    // TODO: This should throw a lint rule but it doesn't
    if (animal case NotAnimal result) {
      print(result);
    }
    if (animal case NotAnimal()) {
      print('This is not an animal');
    }

    switch (animal.runtimeType) {
      case Animal:
        print('This is an animal');
        break;
      case int:
        print('This is an integer');
      case HomeAnimal:
        print('This is a home animal');
        break;
      case NotAnimal:
        print('This is not an animal');
        break;
      default:
        print('Unknown type');
    }
  }
}

class Animal {}

class NotAnimal {}

class HomeAnimal extends Animal {}
