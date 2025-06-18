import 'package:flutter/material.dart';

class AvoidDynamicType extends StatelessWidget {
  const AvoidDynamicType({
    super.key,
    required this.height,
  });

  final dynamic height;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
