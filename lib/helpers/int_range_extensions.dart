extension IntRangeExtension on int {
  /// Generates an Iterable of [int]s from this [int] to [end] (exclusive).
  Iterable<int> to(int end) sync* {
    for (var i = this; i < end; i++) {
      yield i;
    }
  }

  /// Generates an Iterable of [int]s from this [int] to [end] (inclusive).
  Iterable<int> until(int end) => to(end + 1);

  /// Returns whether this [int] is in the range [start] to [end]. Depending on
  /// [inclusive] the range logic will be inclusive and exclusive respectivly.
  /// Exclusive is the default.
  bool isInRange(int start, int end, {bool inclusive = false}) {
    if (inclusive) return this >= start && this <= end;
    return this >= start && this < end;
  }
}
