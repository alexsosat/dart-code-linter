import 'package:flutter/material.dart';

class CheckForEqualsInRenderObjectSetters extends RenderBox {
  double _dividerWidth = 0;
  double get dividerWidth => _dividerWidth;
  // LINT
  set dividerWidth(double value) {
    _dividerWidth = value;
    markNeedsLayout();
  }

  double get spacing => _spacing;
  double _spacing = 0;
  // LINT
  set spacing(double value) {
    _spacing = value;

    if (_spacing == value) {
      return;
    }
    markNeedsLayout();
  }
}
