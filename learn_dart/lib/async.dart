import 'dart:async';

/**
 * 在调用异步函数的方法要加上async声明，
 * 使用异步返回的结果值，只需在异步方法前面使用await即可
 * 或者通过.then的方式回调future的值
 * 
 * 使用try-catch处理异步的错误｜catchError
 */
void main(List<String> args) async {
  try {
    var vehicle = await getVehicle();
    print(vehicle);
  } catch (error) {
    print(error);
  }

  getVehicle()
      .then((value) => print(value))
      .catchError((error) => print(error));
}

/**
 * 定义异步函数
 */
Future<String> getVehicle() async {
  throw '🚧'; 
  return '🚗';
}
