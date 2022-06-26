class Car<T> {
  T engine;
  Car(this.engine);
}

class V8 {
  int horsepower;
  V8(this.horsepower);
  
}

void main(List<String> args) {
  var engine = V8(518);
  var defender = Car(engine);
  print(defender.engine.horsepower);
}
