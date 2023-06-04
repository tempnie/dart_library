// 字符串与正则表达式 https://dart.dev/guides/libraries/library-tour#strings-and-regular-expressions

void main() {
  Searchinginside_a_string();
  Extractingdatafromastring();
  Convert_uporlow();
  terimmming_emptystrings();
  Repalce_partsofstrings();
  building_a_string();
}

//在字符串中搜索
void Searchinginside_a_string() {
  assert('Never odd or even'.contains('odd'));
  assert('Never odd or even'.startsWith('Never'));
  assert('Never odd or even'.endsWith('even'));
  assert('Never odd or even'.indexOf('odd') == 6);
}

//从字符串中提取数据
void Extractingdatafromastring() {
  assert('Never odd or even'.substring(6, 9) == 'odd');
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  assert('Never odd or even'[0] == 'N');
  for (final char in 'hello'.split('')) {
    print(char);
  }
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnitList[0] == 78);
}

//首字母大小写转换
void Convert_uporlow() {
  assert('web apps'.toUpperCase() == 'WEB APPS');
  assert('WEB APPS'.toLowerCase() == 'web apps');
}

//使用 trim() 移除首尾空格。使用 isEmpty 检查一个字符串是否为空（长度为 0）。
void terimmming_emptystrings() {
  assert('  hello  '.trim() == 'hello');
  assert(''.isEmpty);
  assert('  '.isNotEmpty);
}

//替换部分字符串
void Repalce_partsofstrings() {
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  assert(greeting != greetingTemplate);
}

//构建一个字符串
void building_a_string() {
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  assert(fullString == 'Use a StringBuffer for efficient string creation.');
}

//正则表达式

void Regexpress() {
  var numbers = RegExp(r'\d+');
  var allCharacters = 'llamas live fifteen to twenty years';
  var someDigits = 'llamas live 15 to 20 years';
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
}
