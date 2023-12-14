import 'package:meta/meta.dart';
import 'package:test/test.dart';

typedef AnswerForInput = (
  String input,
  Object? partOneAnswer,
);

@isTest
void runDay(
  int day, {
  bool onlyTest = false,
  required (AnswerForInput test, AnswerForInput real) input1,
  required (AnswerForInput test, AnswerForInput real) input2,
  required Object? Function(List<String> lines) part1,
  required Object? Function(List<String> lines) part2,
}) {
  group('Day $day - testInput', () {
    test('Part 1', () {
      final actual = part1(input1.$1.$1.split('\n'));
      expect(actual, isNotNull);
      expect(actual, input1.$1.$2);
    });
    test('Part 2', () {
      final actual = part2(input2.$1.$1.split('\n'));
      expect(actual, isNotNull);
      expect(actual, input2.$1.$2);
    });
  });

  if (!onlyTest) {
    group('Day $day - acutalInput', () {
      test('Part 1', () {
        final actual = part1(input1.$2.$1.split('\n'));
        expect(actual, isNotNull);
        expect(actual, input1.$2.$2);
      });
      test('Part 2', () {
        final actual = part2(input2.$2.$1.split('\n'));
        expect(actual, isNotNull);
        expect(actual, input2.$2.$2);
      });
    });
  }
}
