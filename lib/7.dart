import 'package:async/async.dart';
import 'package:collection/collection.dart';

abstract class Item {
  const Item();

  int get size;
}

class File extends Item {
  const File(this.size);

  @override
  final int size;
}

class Directory extends Item {
  List<Item> subItems = [];

  @override
  int get size => subItems.map((e) => e.size).sum;
}

void main() async {
  // print(testInput);
  final lineReader = readLines(testInput);

  ChunkedStreamReader(lineReader);

  await lineReader.first;

  print(await lineReader.toList());
}

Stream<String> readLines(String input) async* {
  for (final row in input.split('\n')) {
    yield row;
  }
}

const testInput = r'''$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k''';

const input = '''''';
