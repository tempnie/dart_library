//异常 https://dart.cn/guides/libraries/library-tour#exceptions
class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}
void foo() {
  throw FooException('Something went wrong!');
}

void main() {
  try {
    foo();
  } catch (e) {
    if (e is FooException) {
      print('Caught FooException: $e');
    } else {
      print('Caught exception: $e');
    }
  }
}

