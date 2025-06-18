// prefer format comments like sentences // LINT
class FormatComments {
  /// with start space with dot. // LINT
  void Test() {
    // with start space with dot. // LINT
  }

  /// With start space without dot // LINT
  function() {
    //Without start space without dot // LINT

    // TODO: This should throw a lint error if the comment does not follow the format.
/* prefer format comments
like sentences */ // LINT.

    print('a');
  }
}
