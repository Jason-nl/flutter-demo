import 'package:intl/intl.dart';

void main() {
  print(greet());
}

String greet() {
  return Intl.message("你好", name: "greet");
}
