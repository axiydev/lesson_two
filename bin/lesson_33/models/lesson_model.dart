///single
abstract class Parent {}

class Child extends Parent {}

class Child2 extends Parent {}

///multi level
class A {
  doA(String? name) {
    print("A : $name");
  }
}

class B extends A {
  @override
  doA(String? name) {
    // super.doA(name);
    print("doA B $name");
  }

  doB(String? pro) {
    print("B : $pro");
  }
}

class C extends B {
  doC(String? name) {
    super.doA(name);
    print("doC  : $name");
  }
}

///multiple
class D {}

class E {}

class F {}

class H implements D, E, F {}
