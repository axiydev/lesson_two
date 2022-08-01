abstract class Fruit {}

class Banana extends Fruit {}

class Apple extends Fruit {}

abstract class Mammal {
  void eat(Fruit fruit);
}

class Elephant extends Mammal {
  @override
  void eat(Fruit fruit) {
    print("Elephant eats fruit");
  }
}

class Monkey extends Mammal {
  @override
  void eat(covariant Banana fruit) {
    print("Monkey eats banana");
  }
}
