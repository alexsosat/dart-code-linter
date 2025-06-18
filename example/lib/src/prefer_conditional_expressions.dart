void testFunction() {
  int a = 0;

  // LINT
  if (a > 0) {
    a = 1;
  } else {
    a = 2;
  }

  // LINT
  if (a > 0)
    a = 1;
  else
    a = 2;

  int function() {
    // LINT
    if (a == 1) {
      return 0;
    } else {
      return 1;
    }

    // LINT
    if (a == 2)
      return 0;
    else
      return 1;
  }
}
