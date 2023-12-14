extension CodeUnitExtension on List<int> {
  int get toNumber {
    var response = 0;
    for (final number in this) {
      response = response * 10 + number - 48;
    }
    return response;
  }
}
