class IronBody {
  String? ironType;
  IronBody({this.ironType});
}

abstract class Fly {
  void fly();
}

abstract class Run {
  void run();
}

abstract class Swim {
  void swim();
}

class Car extends IronBody implements Run {
  // Car(super.ironType);
  @override
  void run() {
    print("Car can run");
  }
}

class Helicopter extends IronBody implements Fly {
  Helicopter({super.ironType});
  @override
  void fly() {
    print("Helicopter can Fly");
  }
}

class Boat extends IronBody implements Swim {
  Boat({super.ironType});
  @override
  void swim() {
    print("Boat can Swim");
  }
}
