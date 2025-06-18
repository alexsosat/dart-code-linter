import 'package:flutter/material.dart';

void doSomethingWithCallback(VoidCallback function) {
  function();
}

void main() {
  doSomethingWithCallback(
    () async {
      final result = await Future<String>.delayed(
        Duration(seconds: 1),
        () => 'Hello World',
      );
      print(result);
    },
  );
}
