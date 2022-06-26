class Car {
  String? engine;

/**
 * 默认的构造方法
 */
  // Car(String engine) {
  //   this.engine = engine;
  //   print("一辆崭新的汽车");
  // }

/**
 * 带名字的构造方法
 */
  Car.make(String carEngine) : engine = carEngine;

  drive() {
    print('呜呜~');
  }
}

class PickupTruck extends Car {
  PickupTruck(String engine) : super.make(engine);
}

void main() {
  // testCar();
  testPickupTruck();
}

void testPickupTruck() {
  PickupTruck p1 = PickupTruck('v8');
  print(p1.engine);
}

void testCar() {
  // Car c1 = Car("v8");
  Car c2 = Car.make('v12');
  // print(c1.engine);
  print(c2.engine);
  // c1.drive();
  c2.drive();
}

