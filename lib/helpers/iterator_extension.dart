extension IteratorExtension<T> on Iterator<T> {
  void jump([int steps = 1]) {
    for (var i = 0; i < steps; i++) {
      moveNext();
    }
  }

  T readNext() {
    moveNext();
    return current;
  }

  Iterable<T> readUntilNot([T? endValue]) sync* {
    yield current;
    while (moveNext()) {
      if (current != endValue) return;
      yield current;
    }
  }

  Iterable<T> readUntil([T? endValue]) sync* {
    yield current;
    while (moveNext()) {
      if (current == endValue) return;
      yield current;
    }
  }

  Iterable<T> readUntilFunc(bool Function(T e) test) sync* {
    yield current;
    while (moveNext()) {
      if (!test(current)) return;
      yield current;
    }
  }
}
