class MySuper{
  void method(){
    print("mySuper method");
  }
}

mixin Mix on MySuper{
  @override
  void method(){
    super.method();
    print("Mix method");
  }
}

class SubClass extends MySuper with Mix{

}


