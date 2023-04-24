//math https://dart.cn/guides/libraries/library-tour#dartmath---math-and-random
import 'dart:math';

void main() {
  print(cos(pi));

  var degrees = 30;
  var radians = degrees * (pi / 180);

  var sinOf30degrees = sin(radians);
  print((sinOf30degrees - 0.5).abs() < 0.01);

  print(max(1, 12));
  print(min(10, 180));

  print(e);
  print(pi);
  print(sqrt2);

  var random = Random();
  print(random.nextBool());
  
}
