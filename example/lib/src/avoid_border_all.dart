import 'package:flutter/material.dart';

class AvoidBorderAll extends StatelessWidget {
  const AvoidBorderAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
      ),
    );
  }
}
