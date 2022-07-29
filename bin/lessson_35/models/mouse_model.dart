class Animal {
  void sleep() {
    print('Animal can sleep');
  }
}

class Mammal {
  void sleep() {
    print('Mammal can sleep');
  }
}

mixin Wild{
  void sleep() {
    print('Wild can sleep');
  }
}

class Cat with Animal, Mammal, Wild {
  @override
  void sleep() {
    super.sleep();
    print("Cat can sleep");
  }
}
