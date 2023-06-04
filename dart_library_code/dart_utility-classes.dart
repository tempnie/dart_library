// 工具类 https://dart.cn/guides/libraries/library-tour#utility-classes
import 'dart:collection';

//比较对象
class line implements Comparable<line> {
  final int length;
  const line(this.length);

  @override
  int compareTo(line other) => length - other.length;
}
//Implementing map keys 
//在 Dart 中每个对象会默认提供一个整数的哈希值，因此在 map 中可以作为 key 来使用，重写 hashCode 的 getter 方法来生成自定义哈希值。
//如果重写 hashCode 的 getter 方法，那么可能还需要重写 == 运算符
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  @override
  int get hashCode => Object.hash(firstName, lastName);

  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

class Process {
  // Represents a process...
}

class ProcessIterator implements Iterator<Process> {
  final List<Process> _processes;
  int _currentIndex;

  ProcessIterator(this._processes) : _currentIndex = 0;

  @override
  Process get current {
    if (_currentIndex < _processes.length) {
      return _processes[_currentIndex];
    }
    throw StopIteration();
  }

  @override
  bool moveNext() {
    _currentIndex++;
    return _currentIndex < _processes.length;
  }
}

class StopIteration implements Exception {
  // Custom exception class for indicating end of iteration.
}

// A mythical class that lets you iterate through all
// processes. Extends a subclass of [Iterable].
class Processes extends IterableBase<Process> {
  final List<Process> _processes;

  Processes(this._processes);

  @override
  Iterator<Process> get iterator => ProcessIterator(_processes);
}


void main() {
  var short = const line(1);
  var long = const line(10);
  print(short.compareTo(long));

  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  print(p1.hashCode == p2.hashCode);
  print(p1 == p2);
  print(p1 != p3);

var processes = [Process(), Process(), Process()];

  // Iterable objects can be used with for-in.
  try {
    for (final process in Processes(processes)) {
      // Do something with the process.
      print(process);
    }
  } catch (e) {
    if (e is StopIteration) {
      // End of iteration reached.
      print('Iteration ended.');
    } else {
      // Handle other exceptions.
      print('Error: $e');
    }
  }
}
