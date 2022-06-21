import 'dart:io';

void main() {
  var car = Car('BMW', 'Mercedes', 120, 95);
  car.brakeAccelerate(car.car1, car.car2, car.speed1, car.speed2);
  while (true) {
    stdout.write('Brake or Accelerate: ');
    String input = stdin.readLineSync()!.toLowerCase();
    if (input == 'accelerate') {
      car.accelerate();
      car.brakeAccelerate(car.car1, car.car2, car.speed1, car.speed2);
    }
    if (input == 'brake') {
      car.brake();
      car.brakeAccelerate(car.car1, car.car2, car.speed1, car.speed2);
    }
    if (input == 'stop') {
      break;
    }
  }
}

class Car {
  final String car1;
  final String car2;
  int speed1;
  int speed2;
  Car(this.car1, this.car2, this.speed1, this.speed2);
  void accelerate() {
    speed1 += 10;
    speed2 += 10;
  }

  void brake() {
    speed2 -= 10;
    speed1 -= 10;
  }

  brakeAccelerate(car1, car2, speed1, speed2) {
    print('$car1 is going at $speed1 km/h');
    print('$car2 is going at $speed2 km/h');
  }
}
