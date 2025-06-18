import 'package:flutter/material.dart';

final _defaultFinalRadius = BorderRadius.circular(8);

class RoundedWidget extends StatelessWidget {
  final Widget child;

  const RoundedWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _defaultFinalRadius,
      child: child,
    );
  }
}
