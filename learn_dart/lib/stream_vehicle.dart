import 'dart:async';

// StreamController和StreamSink的区别：https://wizardforcel.gitbooks.io/gsyflutterbook/content/Flutter-11.html

void main() async {
  // 流水线订阅
  // await subscription();

  // 流水线控制
  // control();

  // 多次订阅流水线
  multipleSubscription();
}

void multipleSubscription() {
  StreamController<String> vehicleStreamController =
      StreamController<String>.broadcast();
  vehicleStreamController.stream.listen(onDataVehicle, onError: onErrorVehicle);
  vehicleStreamController.stream.listen(onData, onError: onError);
  StreamSink vehicleStreamSink = vehicleStreamController.sink;
  vehicleStreamSink.add('🚗');
  vehicleStreamSink.addError(Exception('🌋'));
}

void control() {
  StreamController<String> vehicleStreamController = StreamController<String>();
  vehicleStreamController.stream.listen(onDataVehicle, onError: onErrorVehicle);

  // 向这个控制器控制的流水线上添加数据
  // vehicleStreamController.add('🚗');
  // 流水线上发生的错误可以使用addError这个方法去添加
  // vehicleStreamController.addError(Exception('🌋'));

  StreamSink vehicleStreamSink = vehicleStreamController.sink;
  vehicleStreamSink.add('🚗');
  vehicleStreamSink.addError(Exception('🌋'));
}

Future<void> subscription() async {
  Stream<String> vehicleStream = Stream.fromFuture(getVehicle());
  // 订阅stream流水线上的数据
  StreamSubscription<String> vehicleSubscription =
      vehicleStream.listen(onDataVehicle, onError: onErrorVehicle);
  print('暂停订阅');
  vehicleSubscription.pause();

  await Future.delayed(Duration(seconds: 3));
  print('恢复订阅');
  vehicleSubscription.resume();
}

onDataVehicle(data) {
  print('onDataVehicle: $data');
}

onErrorVehicle(error) {
  print('onErrorVehicle: $error');
}

Future<String> getVehicle() async {
  await Future.delayed(Duration(seconds: 3));
  // throw 'ERROR ~~';
  return "🚗";
}

onData(data) {
  print('onData: $data');
}

onError(error) {
  print('onError: $error');
}
