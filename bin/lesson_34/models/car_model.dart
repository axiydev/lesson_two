class Vehicle {
  String? color;
  Vehicle(this.color);

  onCall() {
    print("Vehicle`s color is $color");
  }
}

//extends
class Car extends Vehicle {
  Car(super.color);
  @override
  onCall() {
    print("Car`s color is $color");
  }
}

//implements
class Bus implements Vehicle {
  @override
  String? color;
  Bus(this.color);
  @override
  onCall() {
    print("Bus`s color is $color");
  }
}
