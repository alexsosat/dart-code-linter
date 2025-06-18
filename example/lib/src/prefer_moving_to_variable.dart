import 'package:flutter/material.dart';

class PreferMovingToVariable extends StatelessWidget {
  const PreferMovingToVariable({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: This should throw a lint error if the Theme.of(context) is not moved to a variable.
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Text(
        'Text with a background color',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
