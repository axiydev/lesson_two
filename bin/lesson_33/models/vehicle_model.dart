abstract class Vehicle {
  fuelAmount(); //abstract funksiya
  capacity(); //abstract funksiya
  applyBreak(); //abstract funksiya
  void printModel() {
    print("Bu Vehicle classi");
  }
}

class Bus extends Vehicle {
  @override
  applyBreak() {}

  @override
  capacity() {}

  @override
  fuelAmount() {}

  @override
  void printModel() {
    super.printModel();
    print("Bu Buss classi");
  }
}

class Car extends Vehicle {
  @override
  applyBreak() {}

  @override
  capacity() {}

  @override
  fuelAmount() {}
}

class Truck extends Vehicle {
  @override
  applyBreak() {}

  @override
  capacity() {}

  @override
  fuelAmount() {}
}
