abstract class Reptile with Bite,Eat {
  hunt(){
    super.eat();
    super.bite();
  }
}

mixin Eat {
  eat() {
    print("Eating");
  }
}

mixin Bite {
  bite() {
    print("Biting");
  }
}

class Alligator extends Reptile{

}

class Crocadile extends Reptile {

}
