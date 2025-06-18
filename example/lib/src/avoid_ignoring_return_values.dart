import 'package:flutter/material.dart';

class AvoidIgnoringReturnValues extends StatelessWidget {
  const AvoidIgnoringReturnValues({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  int testFunction() {
    return 42;
  }

  void lint() {
    testFunction();

    final result = testFunction();
    print(result);
  }
}
