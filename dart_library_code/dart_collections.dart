//集合  https://dart.dev/guides/libraries/library-tour#collections

void main() {}
void creatlists() {
  var grains = <String>[];
  assert(grains.isEmpty);

  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');

  fruits.addAll(['grapes', 'bananas']);
  fruits.addAll(['grapes', 'bananas']);
  assert(fruits.length == 5);

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

  fruits.clear();
  assert(fruits.isEmpty);

  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
}

void find_index() {
  var fruits = ['apples', 'oranges'];
  assert(fruits[0] == 'apples');
  assert(fruits.indexOf('apples') == 0);
}

void sotrlist() {
  var fruits = ['bananas', 'apples', 'oranges'];
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');
}

void listcontains() {
  var fruits = <String>[];

  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);
}

void creatsets() {
  var ingredients = <String>{};
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);
  ingredients.add('gold');
  assert(ingredients.length == 3);
  ingredients.remove('gold');
  assert(ingredients.length == 2);
  var atomicNumbers = Set.from([79, 22, 54]);
}

void find_a_charinsets() {
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.contains('titanium'));
  assert(ingredients.containsAll(['titanium', 'xenon']));
}

void findsanmeset() {
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));
}

void creatMaps() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  var searchTerms = Map();
  var nobleGases = Map<int, String>();
}

void changecontains_maps() {
  var nobleGases = {54: 'xenon'};
  assert(nobleGases[54] == 'xenon');
  assert(nobleGases.containsKey(54));

  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
}

void retrieveallthevaluesorkeys() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  var keys = hawaiianBeaches.keys;

  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('Waikiki')));
}

void findcontains_key() {
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(!hawaiianBeaches.containsKey('Florida'));

}
