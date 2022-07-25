class A {
  hello() {}
}

abstract class B {
  hello(); //abstract function

}

class C extends B {
  @override
  hello() {}
}

abstract class Dog {
  String? name = "Jerry";
  void hello() {
    print("$name hello Dog");
  }
}

class Tommy extends Dog {
  @override
  String? name = "Tom";
  // void setName() {
  //   name = super.name;
  // }

}

void main(List<String> args) {
  // B obj = C();
  // obj.hello();

  Tommy tom = Tommy();
  tom.hello();
  print(tom.name);
}
