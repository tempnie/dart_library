// 工具类 https://dart.cn/guides/libraries/library-tour#utility-classes


//比较对象
class line implements Comparable<line> {
  final int length;
  const line(this.length);

  @override
  int compareTo(line other) => length - other.length;
}

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

   

}
