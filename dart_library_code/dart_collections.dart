//集合  https://dart.dev/guides/libraries/library-tour#collections

void main() {
  print('--------');
  print('creatlists');
  creatlists();
  print('--------');
  print('findindex');
  find_index();
  print('-------');
  sotrlist();
  print('-------');
  listtypes();
  print('-------');
  creatsets();
  print('-------');
  find_a_charinsets();
  print('-------');
  findsanmeset();
  print('-------');
  creatMaps();
  print('-------');
  changecontains_maps();
  print('-------');
  retrieveallthevaluesorkeys();
  print('-------');
  findcontains_key();
  print('-------');
  publicmethods();
}

//lists
void creatlists() {
  var grains = <String>[];
  print(grains.isEmpty);

  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');

  fruits.addAll(['grapes', 'bananas']);
  fruits.addAll(['grapes', 'bananas']);
  var length = fruits.length;
  print('length is $length and fruits is $fruits');

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  print('fruits is $fruits');
  fruits.clear();
  print(fruits.isEmpty);

  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
}

void find_index() {
  var fruits = ['apples', 'oranges'];
  print(fruits.indexOf('oranges'));
  print(fruits.indexOf('apples'));
}

void sotrlist() {
  var fruits = ['bananas', 'apples', 'oranges'];
  print(fruits);
  fruits.sort((a, b) => a.compareTo(b));
  print(fruits);
}

void listtypes() {
  var fruits = <String>[];

  fruits.add('apples');
  var fruit = fruits[0];
  print(fruit is String);
}

//sets
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

void publicmethods() {
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('i drink $tea'));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
  });

  var teas1 = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas1.map((tea) => tea.toUpperCase());
  loudTeas.forEach(print);

  bool isDecaffeinated(String teaName) => teaName == 'chamomile';
  var decaffeinatedTeas = teas.where((tea) => isDecaffeinated(tea));
  assert(teas.any(isDecaffeinated));
  assert(!teas.every(isDecaffeinated));
}
