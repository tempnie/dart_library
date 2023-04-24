// html https://dart.cn/guides/libraries/library-tour#darthtml
import 'dart:html';

void main(){

Element idElement = querySelector('#an-id')!;


Element classElement = querySelector('.a-class')!;


List<Element> divElements = querySelectorAll('div');

List<Element> textInputElements = querySelectorAll(
  'input[type="text"]',
);


List<Element> specialParagraphElements = querySelectorAll('#id p.class');
}
