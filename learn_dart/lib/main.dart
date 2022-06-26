import './variable.dart';
void main(List<String> args) {
  // testVar();
  testFinal();
  // testConst();
  // testCompareVarWithFinalAndConst();
}

String singleWhere(Iterable<String> items) {
  return items.singleWhere(
      (element) => element.startsWith('M') && element.contains('a'));
}
