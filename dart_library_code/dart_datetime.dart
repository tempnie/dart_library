//DateTime  https://dart.cn/guides/libraries/library-tour#dates-and-times

void main() {
  var now = DateTime.now();
  var y2k = DateTime(2000);
  print(y2k);
  y2k = DateTime(2000, 1, 2);
  print(y2k);
  y2k = DateTime.utc(2000);
  print(y2k);
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k);
  print('-----');
  //y2k = DateTime.parse('2000-01-01 T00:00:00Z');
  // print(y2k);

  var sameTimeLastYear = now.copyWith(year: now.year - 1);
  print(sameTimeLastYear);

  y2k = DateTime.utc(2000);
  assert(y2k.millisecondsSinceEpoch == 946684800000);
  var unixEpoch = DateTime.utc(1970);
  assert(unixEpoch.millisecondsSinceEpoch == 0);

  var y2001 = y2k.add(const Duration(days: 366));
  print(y2001);

  var december2000 = y2001.subtract(const Duration(days: 30));
  print(december2000);

  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366); 
}
