// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/**
 * 自定义异常
 */
class NoGasException implements Exception {
  String message;
  NoGasException({
    required this.message,
  });
}

void main(List<String> args) {
  // testIfWithElse();
  // testSwitch();
  // testThrow();

  testForInAndEach();
}

void testForInAndEach() {
  final animals = ['🐘', '🦕', '🐳'];
  for (var animal in animals) {
    print(animal);
  }

  print("-------------");

  animals.forEach((animal) {
    print(animal);
  });
}

/**
 * try..catch 在调用的地方使用
 * 具体使用什么异常在catch使用on Exception
 */
void testThrow() {
  try {
    drive();
  } on NoGasException catch (e) {
    print(e.message);
  }
}

/**
 * throw：抛出未处理的异常
 */
void drive() {
  var gasoline = getGasoline();
  if (gasoline == 0) {
    throw NoGasException(message: '没油了~');
  }

  print("呜呜 ~");
}

/**
 * 
 */
int getGasoline() {
  return 0;
}

/**
 * 检查不同的情况
 */
void testSwitch() {
  var gear = 'P';
  // if (gear == 'P') {
  //   print('停车');
  // }

  switch (gear) {
    case "P":
      print("停车");
      break;
    case "R":
      print("倒车");
      break;
    case "D":
      print("前进");
      break;
    case "N":
      print("空档");
      break;
    default:
      print("档位异常!");
      break;
  }
}

/**
 * 条件判断
 */
void testIfWithElse() {
  var speed = 100;
  // speed = 125;
  if (speed > 120) {
    print('你已超速~');
  } else {
    print('车速正常');
  }
}
