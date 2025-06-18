import 'package:flutter/material.dart';

class AvoidCollectionWithUnrelatedTypes extends StatelessWidget {
  const AvoidCollectionWithUnrelatedTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void _lint() {
    final map = Map<int, String>();

    map.containsKey("str");
  }
}
