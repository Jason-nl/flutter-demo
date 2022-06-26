import './list.dart';

void main() {
  // testType();
  // testString();
  // testBool();

  // testList();
  //testListByIndex();
  // testListByFirstWhere();
  // testListBySingleWhere();
  // testListByEvery();
  // testListByAny();
  // testListByWhere();
  // testListByTakeWhileAnSkipWhere();
  // testListByMapAndForeach();

  testMap();
}

void testMap() {
  final animals = {'🦏', '🐘', '🐳'};
  animals.add('🦕');
  print(animals);
  print(animals.toList());
  print(animals.toSet());
}

void testBool() {
  bool hasValidSubscription;
  hasValidSubscription = true;
  print(hasValidSubscription);
}

void testString() {
  const subTitle = 'Flutter 客户端应用开发';
  const title = '小白的开发之路 - $subTitle';
  print(title);
  print(title.split('-'));
}

testType() {
  const String title = '小白的开发之路';
  print(title.length);
  print(title.contains('小白'));
}
