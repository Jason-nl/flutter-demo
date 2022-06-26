void testListByMapAndForeach() {
  const numbers = [10, 20, 30, 40, 50];
  print(numbers.map((e) => e * 10));

  const digitalProducts = [
    {'name': 'macbookair m2', 'price': 9499},
    {'name': 'macbookpro m1pro', 'price': 14999},
    {'name': 'iphone13 a15', 'price': 6299}
  ];
  // map有返回值
  var priceSequence = digitalProducts.map((e) => e['price']);
  var nameSequence = digitalProducts.map((e) => e['name']);

  print('nameSequence: $nameSequence priceSequence: $priceSequence');

  // foreach没有返回值
  digitalProducts.forEach(((element) =>
      print('name:${element["name"]} price:${element["price"]}')));
}

void testListByIndex() {
  final animals = ['🐶', '🦕', '🐳'];
  print(animals.elementAt(1));
  print('------------------------');
  print(animals[1]);
}

void testListByTakeWhileAnSkipWhere() {
  const numbers = [1, 3, -2, 0, 4, 5, 1, 0];
  // 过滤元素，takeWhile 表示不满足条件后遍历结束
  var numbersUntilZero = numbers.takeWhile((value) => value != 0);
  print('number until 0: $numbersUntilZero');

  // 过滤元素，skipWhere 表示从满足条件的元素开始遍历
  var numbersStartingAtZero = numbers.skipWhile((value) => value != 0);
  print('number starting at 0: $numbersStartingAtZero');

  const items = ['MacBook', 'IPad', 'Airpod', 'Iphone', 'Iphone Mini'];
  print(items.takeWhile((value) => value.contains('o')));
  print(items.skipWhile((value) => value.contains('o')));
}

void testListByWhere() {
  const numbers = [1, -2, 3, 42];
  // 过滤奇数序列
  var anOddNumberSequences = numbers.where((element) => element.isOdd);
  print(anOddNumberSequences);
  // 过滤偶数序列
  var evenNumberSequence = numbers.where((element) => element.isEven);
  print(evenNumberSequence);
}

void testListByAny() {
  // 有匹配的就返回true，都不匹配返回false
  const items = ['Salad', 'Popcorn', 'Toast'];
  print(items.any((element) => element.contains('z')));
  print(items.any((element) => element.contains('a')));
}

void testListByEvery() {
  // 每个元素是否都匹配，都匹配返回true,有不匹配的返回false
  const items = ['Salad', 'Popcorn', 'Toast'];
  print(items.every((element) => element.contains('a')));
  print(items.every((element) => element.length >= 5));
}

void testListBySingleWhere() {
  const items = ['MacBook', 'IPad', 'Airpod', 'Iphone', 'Iphone Mini'];
  // 匹配符合条件的唯一元素，如果多个匹配报错
  print(items.singleWhere(
      (element) => element.startsWith('M') && element.contains('a')));
}

void testListByFirstWhere() {
  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];
  // 匹配第一个满足条件的元素
  print(items.firstWhere((element) => element.length > 5));
}

void testList() {
  final animals = ['🐶', '🦕', '🐳'];
  // animals.add(3);
  animals.add('🐷');
  print(animals);
  print(animals.elementAt(1));
  print('------------------------');
  print(animals[1]);
  print('------------------------');
  print(animals.length);
  print(animals.reversed);
  print(animals.first);
  print(animals.last);
  print(animals.asMap());
  // 迭代方式
  for (final animal in animals) {
    print(animal);
  }
  print('----------------');
  animals.forEach((element) => print(element));
  print('----------------');
  for (int i = 0; i < animals.length; i++) {
    print(animals[i]);
  }
}