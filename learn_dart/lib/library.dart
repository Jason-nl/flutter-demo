/// as: 对库起别名，使用别名.方法
/// show：限制库使用的方法（部分使用）
/// hide：限制库不能使用的方法
import 'dart:math' show Point;

void main(List<String> args) {
  var point = Point(10, 30);
  // Random();
  print('${point.x} : ${point.y}');
}
